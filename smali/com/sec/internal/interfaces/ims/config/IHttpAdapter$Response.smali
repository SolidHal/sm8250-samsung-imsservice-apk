.class public Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
.super Ljava/lang/Object;
.source "IHttpAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# static fields
.field private static final CHARSET:Ljava/lang/String; = "utf-8"

.field public static final EXCEPTION_CONNECT:I = 0x322

.field public static final EXCEPTION_SOCKET:I = 0x323

.field public static final EXCEPTION_SOCKET_TIMEOUT:I = 0x324

.field public static final EXCEPTION_SSL:I = 0x321

.field public static final EXCEPTION_SSL_HANDSHAKE:I = 0x320

.field public static final EXCEPTION_UNKNOWN_HOST:I = 0x325

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBody:[B

.field private mHeader:Ljava/util/Map;
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

.field private mStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Map;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p4, "body"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    .line 67
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mStatusCode:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mHeader:Ljava/util/Map;

    .line 58
    iput-object v0, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    .line 68
    iput p2, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mStatusCode:I

    .line 69
    iput-object p3, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mHeader:Ljava/util/Map;

    .line 70
    iput-object p4, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    .line 72
    invoke-direct {p0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->debugPrint()V

    .line 73
    return-void
.end method

.method private debugPrint()V
    .locals 15

    .line 93
    sget-object v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP(S) response : status code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mStatusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x13030000

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mHeader:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 98
    sget-object v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    const-string v1, "+++ HTTP(S) response : header"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mHeader:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mHeader:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v2, "headerField":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget-object v3, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mHeader:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 107
    .local v4, "value":Ljava/lang/String;
    const-string v5, "["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_1

    .line 111
    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->debugPrintHeaderField(Ljava/lang/StringBuffer;)V

    .line 112
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "headerField":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 114
    :cond_1
    sget-object v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--- HTTP(S) response : header"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    const-string v1, "UnsupportedEncodingException: "

    const-string/jumbo v2, "utf-8"

    if-eqz v0, :cond_4

    .line 119
    sget-object v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    const-string v3, "+++ HTTP(S) response : body"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    array-length v0, v0

    const/16 v3, 0x100

    if-le v0, v3, :cond_3

    .line 122
    sget-object v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    const/4 v5, 0x0

    const/16 v6, 0x80

    invoke-direct {v3, v4, v5, v6, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    iget-object v5, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    array-length v5, v5

    sub-int/2addr v5, v6

    invoke-direct {v3, v4, v5, v6, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 125
    :cond_3
    sget-object v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    invoke-direct {v3, v4, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_2
    goto :goto_3

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_3
    sget-object v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    const-string v3, "--- HTTP(S) response : body"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_4
    sget-boolean v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->IS_ENGG_BIN:Z

    if-eqz v0, :cond_9

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "httpContents":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MM/dd/yyyy HH:mm:ss.SSS"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 136
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "timestamp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v5

    .line 138
    .local v14, "buf":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mHeader:Ljava/util/Map;

    const-string v6, "\n"

    if-eqz v5, :cond_7

    .line 139
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 140
    iget-object v5, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mHeader:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 141
    .local v7, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mHeader:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 142
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-nez v10, :cond_5

    .line 143
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 145
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    .end local v9    # "value":Ljava/lang/String;
    :goto_6
    goto :goto_5

    .line 148
    .end local v7    # "key":Ljava/lang/String;
    :cond_6
    goto :goto_4

    .line 151
    :cond_7
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v5, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    if-eqz v5, :cond_8

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    invoke-direct {v6, v7, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 159
    goto :goto_7

    .line 157
    :catch_1
    move-exception v2

    .line 158
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v5, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_8
    :goto_7
    if-eqz v0, :cond_9

    .line 163
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v8, 0x64

    const/4 v9, 0x1

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    move-object v7, v0

    move-object v10, v4

    invoke-interface/range {v5 .. v13}, Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;->onIndication(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v0    # "httpContents":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "timestamp":Ljava/lang/String;
    .end local v14    # "buf":Ljava/lang/StringBuffer;
    :cond_9
    return-void
.end method

.method private debugPrintHeaderField(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "headerField"    # Ljava/lang/StringBuffer;

    .line 170
    sget-object v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    return-object v0
.end method

.method public getHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mHeader:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mStatusCode:I

    return v0
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 80
    iput p1, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mStatusCode:I

    .line 81
    return-void
.end method
