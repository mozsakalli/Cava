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

package java.net;

import java.io.IOException;
import java.io.InputStream;

public final class URL {
  //private final URLStreamHandler handler;
  private String protocol;
  private String host;
  private int port;
  private String file;
  private String path;
  private String query;
  private String ref;

  public URL(String s) throws MalformedURLException {
    int colon = s.indexOf(':');
    int slash = s.indexOf('/');
    if (colon > 0 && (slash < 0 || colon < slash)) {
      //handler = null;//findHandler(s.substring(0, colon));
      //handler.parseURL(this, s, colon + 1, s.length());
    } else {
      throw new MalformedURLException(s);
    }
  }
/*
  public String toString() {
    return handler.toExternalForm(this);
  }
*/
  public String getProtocol() {
    return protocol;
  }

  public String getHost() {
    return host;
  }

  public int getPort() {
    return port;
  }

  public String getFile() {
    return file;
  }

  public String getRef() {
    return ref;
  }
  
  public String getPath() {
    return path;
  }
  
  public String getQuery() {
    return query;
  }

  /*
  public URLConnection openConnection() throws IOException {
    return null;//handler.openConnection(this);
  }
  */
  
  public InputStream openStream() throws IOException {
    return null;//openConnection().getInputStream();
  }

  public Object getContent() throws IOException {
    return openStream();
  }

  public void set(String protocol, String host, int port, String file,
                  String ref)
  {
    this.protocol = protocol;
    this.host = host;
    this.port = port;
    this.file = file;
    this.ref = ref;
    
    int q = file == null ? -1 : file.lastIndexOf('?');
    if (q != -1) {
      this.query = file.substring(q + 1);
      this.path = file.substring(0, q);
    } else {
      this.path = file;
    }
  }
}
