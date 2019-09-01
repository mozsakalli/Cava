/*
 * Copyright (C) 2019 Digitoy Games.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package java.io;

import cava.annotation.Include;
import cava.c.CLib;
import cava.c.CharPtr;
import cava.platform.NativeCode;

/**
 *
 * @author mustafa
 */
@Include("<sys/stat.h>")
public class File implements Serializable {

    private static final String FileSeparator = "/";
            //todo: mst = System.getProperty("file.separator");

    private static final boolean IsWindows = false;
            //todo: mst = System.getProperty("os.name").equals("Windows");

    public static final String separator = FileSeparator;

    public static final char separatorChar = FileSeparator.charAt(0);

    private static final String PathSeparator = "/";
            //todo: mst= System.getProperty("path.separator");

    public static final String pathSeparator = PathSeparator;

    public static final char pathSeparatorChar = PathSeparator.charAt(0);

    private final String path;

    public File(String path) {
        if (path == null) {
            throw new NullPointerException();
        }
        this.path = normalize(path);
    }

    public File(String parent, String child) {
        this(parent + FileSeparator + child);
    }

    public File(File parent, String child) {
        this(parent.getPath() + FileSeparator + child);
    }

    private static String stripSeparators(String p) {
        while (p.length() > 1 && p.endsWith(FileSeparator)) {
            p = p.substring(0, p.length() - 1);
        }
        return p;
    }

    private static String normalize(String path) {
        if (IsWindows
                && path.length() > 2
                && path.charAt(0) == '/'
                && path.charAt(2) == ':') {
            // remove a leading slash on Windows
            path = path.substring(1);
        }
        return stripSeparators("\\".equals(FileSeparator) ? path.replace('/', '\\') : path);
    }

    public static boolean rename(String old, String new_) {
        CharPtr oldPtr = CharPtr.allocAsciiZ(old);
        int result = NativeCode.Int("rename(%s, %s);", oldPtr, CharPtr.allocAsciiZ(new_));
        CLib.free(oldPtr);
        return result == 0;
    }

    public boolean renameTo(File newName) {
        return rename(path, newName.path);
    }

    private static boolean isDirectory(String path) {
        NativeCode.Void("struct stat buf");
        NativeCode.Void("char chars[513];");
        NativeCode.Void("stat(%s, &buf)",CharPtr.asciiZ(path, NativeCode.VoidPtr("&chars"), 512));
        return NativeCode.Bool("S_ISDIR(buf.st_mode)");
    }

    public boolean isDirectory() {
        return isDirectory(path);
    }

    private static native boolean isFile(String path);

    public boolean isFile() {
        return isFile(path);
    }

    public boolean isAbsolute() {
        return path.equals(toAbsolutePath(path));
    }

    private static native boolean canRead(String path);

    public boolean canRead() {
        return canRead(path);
    }

    private static native boolean canWrite(String path);

    public boolean canWrite() {
        return canWrite(path);
    }

    private static native boolean canExecute(String path);

    public boolean canExecute() {
        return canExecute(path);
    }

    private static native boolean setExecutable(String path, boolean executable, boolean ownerOnly);

    public boolean setExecutable(boolean executable) {
        return setExecutable(executable, true);
    }

    public boolean setExecutable(boolean executable, boolean ownerOnly) {
        return setExecutable(path, executable, ownerOnly);
    }

    public String getName() {
        int index = path.lastIndexOf(FileSeparator);
        if (index >= 0) {
            return path.substring(index + 1);
        } else {
            return path;
        }
    }

    public String toString() {
        return getPath();
    }

    public String getPath() {
        return path;
    }

    public String getParent() {
        int index = path.lastIndexOf(FileSeparator);
        if (index > 0) {
            return normalize(path.substring(0, index));
        } else if (index == 0) {
            return normalize(path.substring(0, FileSeparator.length()));
        } else {
            return null;
        }
    }

    public File getParentFile() {
        String s = getParent();
        return (s == null ? null : new File(s));
    }

    private static native String toCanonicalPath(String path);

    public String getCanonicalPath() {
        return toCanonicalPath(path);
    }

    public File getCanonicalFile() {
        return new File(getCanonicalPath());
    }

    private static native String toAbsolutePath(String path);

    public String getAbsolutePath() {
        return toAbsolutePath(path);
    }

    public File getAbsoluteFile() {
        return new File(getAbsolutePath());
    }

    protected static long length(CharPtr path) {
        NativeCode.Void("struct stat buf");
        boolean exists = NativeCode.Bool("stat(%s, &buf) == 0",path);
        if(!exists) return -1;
        return NativeCode.Long("buf.st_size");
    }
    
    protected static long length(String path) throws FileNotFoundException {
        NativeCode.Void("char chars[513];");
        long result = length(CharPtr.asciiZ(path, NativeCode.VoidPtr("&chars"),512));
        if(result == -1) throw new FileNotFoundException(path);
        return result;
    }

    public long length() throws FileNotFoundException {
        return length(path);
    }

    private static boolean exists(String path) {
        NativeCode.Void("struct stat buf");
        NativeCode.Void("char chars[513];");
        return NativeCode.Bool("stat(%s, &buf) == 0",CharPtr.asciiZ(path, NativeCode.VoidPtr("&chars"), 512));
    }

    public boolean exists() {
        return exists(path);
    }

    private static boolean mkdir(String path) {
        NativeCode.Void("char chars[513];");
        return NativeCode.Bool("mkdir(%s, S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH)", CharPtr.asciiZ(path, NativeCode.VoidPtr("&chars"), 512));
    }

    public boolean mkdir() {
        return mkdir(path);
    }
    
    /*
    private static native boolean createNewFile(String path) throws IOException;

    public boolean createNewFile() throws IOException {
        return createNewFile(path);
    }
    */
    public static native void delete(String path) throws IOException;

    public boolean delete() {
        try {
            delete(path);
            return true;
        } catch (IOException e) {
            return false;
        }
    }

    public boolean mkdirs() {
        File parent = getParentFile();
        if (parent != null) {
            if (!parent.exists()) {
                if (!parent.mkdirs()) {
                    return false;
                }
            }
        }
        return mkdir();
    }

    public File[] listFiles() {
        return listFiles(null);
    }

    public File[] listFiles(FilenameFilter filter) {
        String[] list = list(filter);
        if (list != null) {
            File[] result = new File[list.length];
            for (int i = 0; i < list.length; ++i) {
                result[i] = new File(this, list[i]);
            }
            return result;
        } else {
            return null;
        }
    }

    public String[] list() {
        return list(null);
    }

    public String[] list(FilenameFilter filter) {
        long handle = 0;
        try {
            handle = openDir(path);
            if (handle != 0) {
                Pair list = null;
                int count = 0;
                for (String s = readDir(handle); s != null; s = readDir(handle)) {
                    if (filter == null || filter.accept(this, s)) {
                        list = new Pair(s, list);
                        ++count;
                    }
                }

                String[] result = new String[count];
                for (int i = count - 1; i >= 0; --i) {
                    result[i] = list.value;
                    list = list.next;
                }

                return result;
            } else {
                return null;
            }
        } finally {
            if (handle != 0) {
                closeDir(handle);
            }
        }
    }

    public long lastModified() {
        return lastModified(path);
    }

    private static native long openDir(String path);

    private static native long lastModified(String path);

    private static native String readDir(long handle);

    private static native void closeDir(long handle);

    private static class Pair {

        public final String value;
        public final Pair next;

        public Pair(String value, Pair next) {
            this.value = value;
            this.next = next;
        }
    }

}
