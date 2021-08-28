.class public Lcom/sun/mail/util/SocketFetcher;
.super Ljava/lang/Object;
.source "SocketFetcher.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private static configureSSLSocket(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)V
    .locals 5
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 324
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_0

    .line 325
    return-void

    .line 326
    :cond_0
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 328
    .local v0, "sslsocket":Ljavax/net/ssl/SSLSocket;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".ssl.protocols"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "protocols":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 330
    invoke-static {v1}, Lcom/sun/mail/util/SocketFetcher;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_1
    const-string v3, "TLSv1"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 340
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".ssl.ciphersuites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "ciphers":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 342
    invoke-static {v2}, Lcom/sun/mail/util/SocketFetcher;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 349
    :cond_2
    return-void
.end method

.method private static createSocket(Ljava/net/InetAddress;ILjava/lang/String;IILjavax/net/SocketFactory;Z)Ljava/net/Socket;
    .locals 2
    .param p0, "localaddr"    # Ljava/net/InetAddress;
    .param p1, "localport"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "cto"    # I
    .param p5, "sf"    # Ljavax/net/SocketFactory;
    .param p6, "useSSL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    if-eqz p5, :cond_0

    .line 223
    invoke-virtual {p5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .local v0, "socket":Ljava/net/Socket;
    goto :goto_0

    .line 224
    .end local v0    # "socket":Ljava/net/Socket;
    :cond_0
    if-eqz p6, :cond_1

    .line 225
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .restart local v0    # "socket":Ljava/net/Socket;
    goto :goto_0

    .line 227
    .end local v0    # "socket":Ljava/net/Socket;
    :cond_1
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 228
    .restart local v0    # "socket":Ljava/net/Socket;
    :goto_0
    if-eqz p0, :cond_2

    .line 229
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 230
    :cond_2
    if-ltz p4, :cond_3

    .line 231
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, p4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_1

    .line 233
    :cond_3
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 234
    :goto_1
    return-object v0
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 370
    new-instance v0, Lcom/sun/mail/util/SocketFetcher$1;

    invoke-direct {v0}, Lcom/sun/mail/util/SocketFetcher$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 369
    return-object v0
.end method

.method public static getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public static getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;
    .locals 23
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "useSSL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    if-nez p3, :cond_0

    .line 116
    const-string/jumbo v0, "socket"

    move-object v1, v0

    .end local p3    # "prefix":Ljava/lang/String;
    .local v0, "prefix":Ljava/lang/String;
    goto :goto_0

    .line 115
    .end local v0    # "prefix":Ljava/lang/String;
    .restart local p3    # "prefix":Ljava/lang/String;
    :cond_0
    move-object/from16 v1, p3

    .line 117
    .end local p3    # "prefix":Ljava/lang/String;
    .local v1, "prefix":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_1

    .line 118
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v2, v0

    .end local p2    # "props":Ljava/util/Properties;
    .local v0, "props":Ljava/util/Properties;
    goto :goto_1

    .line 117
    .end local v0    # "props":Ljava/util/Properties;
    .restart local p2    # "props":Ljava/util/Properties;
    :cond_1
    move-object/from16 v2, p2

    .line 119
    .end local p2    # "props":Ljava/util/Properties;
    .local v2, "props":Ljava/util/Properties;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".connectiontimeout"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "s":Ljava/lang/String;
    const/4 v5, -0x1

    .line 121
    .local v5, "cto":I
    if-eqz v4, :cond_2

    .line 123
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v0

    goto :goto_2

    .line 124
    :catch_0
    move-exception v0

    .line 127
    :cond_2
    :goto_2
    const/4 v13, 0x0

    .line 128
    .local v13, "socket":Ljava/net/Socket;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".timeout"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 129
    .local v14, "timeout":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".localaddress"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 130
    .local v15, "localaddrstr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 131
    .local v0, "localaddr":Ljava/net/InetAddress;
    if-eqz v15, :cond_3

    .line 132
    invoke-static {v15}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_3

    .line 131
    :cond_3
    move-object/from16 v16, v0

    .line 133
    .end local v0    # "localaddr":Ljava/net/InetAddress;
    .local v16, "localaddr":Ljava/net/InetAddress;
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".localport"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 134
    .local v17, "localportstr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 135
    .local v6, "localport":I
    if-eqz v17, :cond_4

    .line 137
    :try_start_1
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v6, v0

    move/from16 v18, v6

    goto :goto_4

    .line 138
    :catch_1
    move-exception v0

    .line 141
    :cond_4
    move/from16 v18, v6

    .end local v6    # "localport":I
    .local v18, "localport":I
    :goto_4
    const/4 v0, 0x0

    .line 143
    .local v0, "fb":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".socketFactory.fallback"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 142
    move-object v12, v6

    .line 144
    .local v12, "fallback":Ljava/lang/String;
    if-eqz v12, :cond_5

    const-string v6, "false"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    const/4 v6, 0x1

    :goto_5
    move/from16 v19, v6

    .line 147
    .end local v0    # "fb":Z
    .local v19, "fb":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".socketFactory.class"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    move-object v11, v0

    .line 148
    .local v11, "sfClass":Ljava/lang/String;
    const/4 v6, -0x1

    .line 150
    .local v6, "sfPort":I
    :try_start_2
    invoke-static {v11}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v0

    move-object/from16 v20, v0

    .line 151
    .local v20, "sf":Ljavax/net/SocketFactory;
    if-eqz v20, :cond_8

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".socketFactory.port"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 152
    move-object v3, v0

    .line 154
    .local v3, "sfPortStr":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 156
    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v6, v0

    goto :goto_6

    .line 168
    .end local v3    # "sfPortStr":Ljava/lang/String;
    .end local v20    # "sf":Ljavax/net/SocketFactory;
    :catch_2
    move-exception v0

    move-object v3, v11

    move-object/from16 v22, v12

    goto :goto_8

    .line 166
    :catch_3
    move-exception v0

    move-object v3, v11

    move-object/from16 v22, v12

    goto/16 :goto_b

    .line 157
    .restart local v3    # "sfPortStr":Ljava/lang/String;
    .restart local v20    # "sf":Ljavax/net/SocketFactory;
    :catch_4
    move-exception v0

    .line 161
    :cond_6
    :goto_6
    const/4 v0, -0x1

    if-ne v6, v0, :cond_7

    .line 162
    move/from16 v0, p1

    move/from16 v21, v0

    .end local v6    # "sfPort":I
    .local v0, "sfPort":I
    goto :goto_7

    .line 161
    .end local v0    # "sfPort":I
    .restart local v6    # "sfPort":I
    :cond_7
    move/from16 v21, v6

    .line 163
    .end local v6    # "sfPort":I
    .local v21, "sfPort":I
    :goto_7
    nop

    .line 164
    nop

    .line 163
    move-object/from16 v6, v16

    move/from16 v7, v18

    move-object/from16 v8, p0

    move/from16 v9, v21

    move v10, v5

    move-object/from16 p2, v3

    move-object v3, v11

    .end local v11    # "sfClass":Ljava/lang/String;
    .local v3, "sfClass":Ljava/lang/String;
    .local p2, "sfPortStr":Ljava/lang/String;
    move-object/from16 v11, v20

    move-object/from16 v22, v12

    .end local v12    # "fallback":Ljava/lang/String;
    .local v22, "fallback":Ljava/lang/String;
    move/from16 v12, p4

    :try_start_4
    invoke-static/range {v6 .. v12}, Lcom/sun/mail/util/SocketFetcher;->createSocket(Ljava/net/InetAddress;ILjava/lang/String;IILjavax/net/SocketFactory;Z)Ljava/net/Socket;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object v13, v0

    move-object/from16 v12, p0

    .end local p2    # "sfPortStr":Ljava/lang/String;
    goto/16 :goto_9

    .line 168
    .end local v20    # "sf":Ljavax/net/SocketFactory;
    :catch_5
    move-exception v0

    move/from16 v6, v21

    goto :goto_8

    .line 166
    :catch_6
    move-exception v0

    move/from16 v6, v21

    goto/16 :goto_b

    .line 151
    .end local v3    # "sfClass":Ljava/lang/String;
    .end local v21    # "sfPort":I
    .end local v22    # "fallback":Ljava/lang/String;
    .restart local v6    # "sfPort":I
    .restart local v11    # "sfClass":Ljava/lang/String;
    .restart local v12    # "fallback":Ljava/lang/String;
    .restart local v20    # "sf":Ljavax/net/SocketFactory;
    :cond_8
    move-object v3, v11

    move-object/from16 v22, v12

    .end local v11    # "sfClass":Ljava/lang/String;
    .end local v12    # "fallback":Ljava/lang/String;
    .restart local v3    # "sfClass":Ljava/lang/String;
    .restart local v22    # "fallback":Ljava/lang/String;
    move-object/from16 v12, p0

    move/from16 v21, v6

    goto :goto_9

    .line 168
    .end local v3    # "sfClass":Ljava/lang/String;
    .end local v20    # "sf":Ljavax/net/SocketFactory;
    .end local v22    # "fallback":Ljava/lang/String;
    .restart local v11    # "sfClass":Ljava/lang/String;
    .restart local v12    # "fallback":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object v3, v11

    move-object/from16 v22, v12

    .line 169
    .end local v11    # "sfClass":Ljava/lang/String;
    .end local v12    # "fallback":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v3    # "sfClass":Ljava/lang/String;
    .restart local v22    # "fallback":Ljava/lang/String;
    :goto_8
    if-nez v19, :cond_b

    .line 170
    instance-of v7, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v7, :cond_9

    .line 172
    move-object v7, v0

    check-cast v7, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    .line 171
    nop

    .line 173
    .local v7, "t":Ljava/lang/Throwable;
    instance-of v8, v7, Ljava/lang/Exception;

    if-eqz v8, :cond_9

    .line 174
    move-object v0, v7

    check-cast v0, Ljava/lang/Exception;

    .line 176
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_9
    instance-of v7, v0, Ljava/io/IOException;

    if-eqz v7, :cond_a

    .line 177
    move-object v7, v0

    check-cast v7, Ljava/io/IOException;

    throw v7

    .line 178
    :cond_a
    new-instance v7, Ljava/io/IOException;

    .line 179
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Couldn\'t connect using \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v9, "\" socket factory to host, port: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    move-object/from16 v12, p0

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    const-string v9, "; Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 178
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 183
    .local v7, "ioex":Ljava/io/IOException;
    invoke-virtual {v7, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 184
    throw v7

    .line 169
    .end local v7    # "ioex":Ljava/io/IOException;
    :cond_b
    move-object/from16 v12, p0

    move/from16 v21, v6

    .line 188
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v6    # "sfPort":I
    .restart local v21    # "sfPort":I
    :goto_9
    if-nez v13, :cond_c

    .line 189
    nop

    .line 190
    const/4 v11, 0x0

    .line 189
    move-object/from16 v6, v16

    move/from16 v7, v18

    move-object/from16 v8, p0

    move/from16 v9, p1

    move v10, v5

    move/from16 v12, p4

    invoke-static/range {v6 .. v12}, Lcom/sun/mail/util/SocketFetcher;->createSocket(Ljava/net/InetAddress;ILjava/lang/String;IILjavax/net/SocketFactory;Z)Ljava/net/Socket;

    move-result-object v13

    .line 192
    :cond_c
    const/4 v6, -0x1

    .line 193
    .local v6, "to":I
    if-eqz v14, :cond_d

    .line 195
    :try_start_5
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_8

    move v6, v0

    goto :goto_a

    .line 196
    :catch_8
    move-exception v0

    .line 198
    :cond_d
    :goto_a
    if-ltz v6, :cond_e

    .line 199
    invoke-virtual {v13, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 201
    :cond_e
    invoke-static {v13, v2, v1}, Lcom/sun/mail/util/SocketFetcher;->configureSSLSocket(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)V

    .line 202
    return-object v13

    .line 166
    .end local v3    # "sfClass":Ljava/lang/String;
    .end local v21    # "sfPort":I
    .end local v22    # "fallback":Ljava/lang/String;
    .local v6, "sfPort":I
    .restart local v11    # "sfClass":Ljava/lang/String;
    .restart local v12    # "fallback":Ljava/lang/String;
    :catch_9
    move-exception v0

    move-object v3, v11

    move-object/from16 v22, v12

    .line 167
    .end local v11    # "sfClass":Ljava/lang/String;
    .end local v12    # "fallback":Ljava/lang/String;
    .local v0, "sex":Ljava/net/SocketTimeoutException;
    .restart local v3    # "sfClass":Ljava/lang/String;
    .restart local v22    # "fallback":Ljava/lang/String;
    :goto_b
    throw v0
.end method

.method private static getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;
    .locals 5
    .param p0, "sfClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 245
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 250
    :cond_0
    invoke-static {}, Lcom/sun/mail/util/SocketFetcher;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 251
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 252
    .local v1, "clsSockFact":Ljava/lang/Class;
    if-eqz v0, :cond_1

    .line 254
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 255
    :catch_0
    move-exception v2

    .line 257
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 258
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 260
    :cond_2
    nop

    .line 261
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 260
    const-string v4, "getDefault"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 263
    .local v3, "mthGetDefault":Ljava/lang/reflect/Method;
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 262
    check-cast v2, Ljavax/net/SocketFactory;

    .line 264
    .local v2, "sf":Ljavax/net/SocketFactory;
    return-object v2

    .line 246
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "clsSockFact":Ljava/lang/Class;
    .end local v2    # "sf":Ljavax/net/SocketFactory;
    .end local v3    # "mthGetDefault":Ljava/lang/reflect/Method;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static startTLS(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 2
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string/jumbo v1, "socket"

    invoke-static {p0, v0, v1}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public static startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;
    .locals 7
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 284
    .local v0, "a":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v2

    .line 291
    .local v2, "port":I
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".socketFactory.class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    nop

    .line 292
    .local v3, "sfClass":Ljava/lang/String;
    invoke-static {v3}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v4

    .line 293
    .local v4, "sf":Ljavax/net/SocketFactory;
    if-eqz v4, :cond_0

    instance-of v5, v4, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v5, :cond_0

    .line 294
    move-object v5, v4

    check-cast v5, Ljavax/net/ssl/SSLSocketFactory;

    .local v5, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_0

    .line 296
    .end local v5    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :cond_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/SSLSocketFactory;

    .line 297
    .restart local v5    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :goto_0
    const/4 v6, 0x1

    invoke-virtual {v5, p0, v1, v2, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v6

    move-object p0, v6

    .line 298
    invoke-static {p0, p1, p2}, Lcom/sun/mail/util/SocketFetcher;->configureSSLSocket(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v3    # "sfClass":Ljava/lang/String;
    .end local v4    # "sf":Ljavax/net/SocketFactory;
    .end local v5    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    return-object p0

    .line 299
    :catch_0
    move-exception v3

    .line 300
    .local v3, "ex":Ljava/lang/Exception;
    instance-of v4, v3, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v4, :cond_1

    .line 302
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    .line 301
    nop

    .line 303
    .local v4, "t":Ljava/lang/Throwable;
    instance-of v5, v4, Ljava/lang/Exception;

    if-eqz v5, :cond_1

    .line 304
    move-object v3, v4

    check-cast v3, Ljava/lang/Exception;

    .line 306
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_1
    instance-of v4, v3, Ljava/io/IOException;

    if-eqz v4, :cond_2

    .line 307
    move-object v4, v3

    check-cast v4, Ljava/io/IOException;

    throw v4

    .line 309
    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception in startTLS: host "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 309
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 311
    .local v4, "ioex":Ljava/io/IOException;
    invoke-virtual {v4, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 312
    throw v4
.end method

.method private static stringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 356
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "st":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v1, "tokens":Ljava/util/List;
    nop

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_0

    .line 360
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 359
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
