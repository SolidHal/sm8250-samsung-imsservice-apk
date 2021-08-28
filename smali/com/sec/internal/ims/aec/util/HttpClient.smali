.class public Lcom/sec/internal/ims/aec/util/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    }
.end annotation


# static fields
.field private static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field private static final GET:Ljava/lang/String; = "GET"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_CHUNK_SIZE:I = 0x7d000

.field private static final MAX_CONN_TIMEOUT:I = 0x7530

.field private static final MAX_READ_TIMEOUT:I = 0x7530

.field private static final MIN_CHUNK_SIZE:I = 0xf000

.field private static final POST:Ljava/lang/String; = "POST"

.field private static final SSL_PROTOCOL:Ljava/lang/String; = "TLS"


# instance fields
.field mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

.field private mNetwork:Landroid/net/Network;

.field mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mPostData:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/sec/internal/ims/aec/util/-$$Lambda$HttpClient$o2W_9uDYzJgp7ktnGMKhRurmusU;->INSTANCE:Lcom/sec/internal/ims/aec/util/-$$Lambda$HttpClient$o2W_9uDYzJgp7ktnGMKhRurmusU;

    sput-object v0, Lcom/sec/internal/ims/aec/util/HttpClient;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPostData:Lorg/json/JSONObject;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mNetwork:Landroid/net/Network;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHeaders:Ljava/util/Map;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mParams:Ljava/util/Map;

    .line 51
    iput p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    .line 52
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/aec/util/HttpClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/aec/util/HttpClient;

    .line 27
    iget v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    return v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method private openURLConnection(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 6
    .param p1, "urlConn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "url":Ljava/net/URL;
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mNetwork:Landroid/net/Network;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v1

    .line 82
    .local v1, "urlConnection":Ljava/net/URLConnection;
    :goto_0
    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_1

    .line 84
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 85
    .local v2, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 86
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 88
    .local v3, "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    move-object v4, v1

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 89
    move-object v4, v1

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v5, Lcom/sec/internal/ims/aec/util/HttpClient;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 92
    .end local v2    # "sc":Ljavax/net/ssl/SSLContext;
    .end local v3    # "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :cond_1
    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    return-object v2
.end method


# virtual methods
.method public closeURLConnection()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 149
    :cond_0
    return-void
.end method

.method createReqUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 152
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "sbParams":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 154
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 155
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "&"

    const-string v6, "="

    if-eqz v3, :cond_1

    .line 156
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "split":[Ljava/lang/String;
    array-length v4, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_0

    aget-object v8, v3, v7

    .line 158
    .local v8, "svc":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .end local v8    # "svc":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 163
    .end local v3    # "split":[Ljava/lang/String;
    :cond_0
    goto :goto_2

    .line 164
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 171
    sget-object v1, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/AECLog;->s(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPostData()Ljava/lang/String;
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPostData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\\\"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getResBody(Ljava/net/HttpURLConnection;)[B
    .locals 9
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .line 202
    const-string v0, "failed to close input stream"

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 203
    .local v1, "body":[B
    const v2, 0x7d000

    new-array v2, v2, [B

    .line 206
    .local v2, "bodyTemp":[B
    const/4 v3, 0x0

    .line 208
    .local v3, "bodyReadTotal":I
    const/4 v4, 0x0

    .line 210
    .local v4, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    .line 212
    :cond_0
    const v5, 0xf000

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 213
    .local v5, "bodyReadPartial":I
    if-lez v5, :cond_1

    .line 214
    add-int/2addr v3, v5

    .line 216
    :cond_1
    if-gez v5, :cond_0

    .line 218
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    if-lez v3, :cond_2

    .line 219
    new-array v6, v3, [B

    move-object v1, v6

    .line 220
    const/4 v6, 0x0

    invoke-static {v2, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_2
    nop

    .line 227
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    goto :goto_1

    .line 229
    :catch_0
    move-exception v6

    .line 230
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    iget v8, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v7, v0, v8}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 225
    .end local v5    # "bodyReadPartial":I
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 222
    :catch_1
    move-exception v5

    .line 223
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v6, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    const-string v7, "failed to read input stream"

    iget v8, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_3

    .line 227
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 229
    :catch_2
    move-exception v5

    .line 230
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v6, v0, v7}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 231
    :cond_3
    :goto_0
    nop

    .line 234
    :goto_1
    return-object v1

    .line 226
    :goto_2
    if-eqz v4, :cond_4

    .line 227
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 229
    :catch_3
    move-exception v6

    .line 230
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    iget v8, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v7, v0, v8}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 231
    .end local v6    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    nop

    .line 232
    :goto_4
    throw v5
.end method

.method getResHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 1
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 198
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getResStatusCode(Ljava/net/HttpURLConnection;)I
    .locals 2
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .line 191
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method getResponse(Ljava/net/HttpURLConnection;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .locals 4
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .line 186
    new-instance v0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->getResStatusCode(Ljava/net/HttpURLConnection;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->getResHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->getResBody(Ljava/net/HttpURLConnection;)[B

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;-><init>(Lcom/sec/internal/ims/aec/util/HttpClient;ILjava/util/Map;[B)V

    return-object v0
.end method

.method public getURLConnection(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTTP GET] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mParams:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/aec/util/HttpClient;->createReqUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/util/HttpClient;->openURLConnection(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 99
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setRequestHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    nop

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/util/HttpClient;->getResponse(Ljava/net/HttpURLConnection;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v0

    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 110
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getURLConnection Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 107
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getURLConnection IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public postURLConnection(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTTP POST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->openURLConnection(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 121
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setRequestHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 122
    sget-object v0, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->getPostData()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 130
    .local v0, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->getPostData()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 131
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 132
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    nop

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/util/HttpClient;->getResponse(Ljava/net/HttpURLConnection;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v0

    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 138
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postURLConnection Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 135
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postURLConnection IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 55
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHeaders:Ljava/util/Map;

    .line 56
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 57
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .line 73
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mNetwork:Landroid/net/Network;

    .line 74
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mParams:Ljava/util/Map;

    .line 61
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 62
    return-void
.end method

.method public setPostData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "postData"    # Lorg/json/JSONObject;

    .line 65
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPostData:Lorg/json/JSONObject;

    .line 66
    return-void
.end method

.method setRequestHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 7
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 177
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 178
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 179
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v4, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_1

    .line 182
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    goto :goto_0

    .line 183
    :cond_1
    return-void
.end method
