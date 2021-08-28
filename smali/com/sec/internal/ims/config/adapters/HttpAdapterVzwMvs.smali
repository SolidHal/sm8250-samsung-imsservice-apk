.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter;
.source "HttpAdapterVzwMvs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$ReadyState;,
        Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$IdleState;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;

.field protected static mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->LOG_TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;-><init>(I)V

    .line 38
    new-instance v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$IdleState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    .line 39
    return-void
.end method


# virtual methods
.method protected getContentLengthBody([BLjava/net/HttpURLConnection;I)[B
    .locals 10
    .param p1, "body"    # [B
    .param p2, "conn"    # Ljava/net/HttpURLConnection;
    .param p3, "contentLength"    # I

    .line 117
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "encoding":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 119
    .local v2, "isNeededGZIPInputStream":Z
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isNeededGZIPInputStream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    if-eqz v2, :cond_1

    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v3, "in":Ljava/io/InputStream;
    :goto_1
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .local v4, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 124
    .local v5, "bufferReader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v6, "sb":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "read":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 126
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 128
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-array v7, v7, [B

    move-object p1, v7

    .line 129
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v7, v1, p1, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "read":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v5    # "bufferReader":Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 133
    .end local v3    # "in":Ljava/io/InputStream;
    goto :goto_6

    .line 120
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v5    # "bufferReader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v1

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v6

    :try_start_8
    invoke-virtual {v1, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "encoding":Ljava/lang/String;
    .end local v2    # "isNeededGZIPInputStream":Z
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local p0    # "this":Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;
    .end local p1    # "body":[B
    .end local p2    # "conn":Ljava/net/HttpURLConnection;
    .end local p3    # "contentLength":I
    :goto_3
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v5    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "encoding":Ljava/lang/String;
    .restart local v2    # "isNeededGZIPInputStream":Z
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local p0    # "this":Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;
    .restart local p1    # "body":[B
    .restart local p2    # "conn":Ljava/net/HttpURLConnection;
    .restart local p3    # "contentLength":I
    :catchall_2
    move-exception v1

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v5

    :try_start_a
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "encoding":Ljava/lang/String;
    .end local v2    # "isNeededGZIPInputStream":Z
    .end local v3    # "in":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;
    .end local p1    # "body":[B
    .end local p2    # "conn":Ljava/net/HttpURLConnection;
    .end local p3    # "contentLength":I
    :goto_4
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v0    # "encoding":Ljava/lang/String;
    .restart local v2    # "isNeededGZIPInputStream":Z
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;
    .restart local p1    # "body":[B
    .restart local p2    # "conn":Ljava/net/HttpURLConnection;
    .restart local p3    # "contentLength":I
    :catchall_4
    move-exception v1

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v4

    :try_start_c
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "encoding":Ljava/lang/String;
    .end local v2    # "isNeededGZIPInputStream":Z
    .end local p0    # "this":Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;
    .end local p1    # "body":[B
    .end local p2    # "conn":Ljava/net/HttpURLConnection;
    .end local p3    # "contentLength":I
    :goto_5
    throw v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    .line 130
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v0    # "encoding":Ljava/lang/String;
    .restart local v2    # "isNeededGZIPInputStream":Z
    .restart local p0    # "this":Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;
    .restart local p1    # "body":[B
    .restart local p2    # "conn":Ljava/net/HttpURLConnection;
    .restart local p3    # "contentLength":I
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mPhoneId:I

    const-string v5, "fail to read body"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    .end local v1    # "e":Ljava/io/IOException;
    :goto_6
    return-object p1
.end method

.method protected getResStatusCode(Ljava/net/HttpURLConnection;)I
    .locals 6
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, "statusCode":I
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResStatusCode: fail to read status code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return v0
.end method

.method protected setHttpUrlConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-super {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setHttpUrlConnection()V

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mHttpURLConn:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mHttpURLConn:Ljava/net/HttpURLConnection;

    const-string v1, "Keep-Alive"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method protected setSocketFactory()V
    .locals 3

    .line 83
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 85
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 86
    .local v0, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 87
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "sc":Ljavax/net/ssl/SSLContext;
    nop

    .line 91
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mPhoneId:I

    const-string v2, "get socketFactory for HTTPS"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 93
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mPhoneId:I

    const-string/jumbo v2, "set sslSocketFactor for HTTPS"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mURLConn:Ljava/net/URLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 95
    return-void
.end method
