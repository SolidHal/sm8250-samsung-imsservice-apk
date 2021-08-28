.class public Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
.super Ljava/lang/Object;
.source "RetryStackAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;


# instance fields
.field private mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->sInstance:Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    .line 30
    const-class v0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    .line 34
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getRetryStackData()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "savedData":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 38
    .local v1, "b":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 39
    .local v2, "bi":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    .local v3, "si":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Stack;

    iput-object v4, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;
    :try_end_0
    .catch Ljava/io/OptionalDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    .end local v1    # "b":[B
    .end local v2    # "bi":Ljava/io/ByteArrayInputStream;
    .end local v3    # "si":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    .line 51
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    goto :goto_1

    .line 46
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 44
    :catch_2
    move-exception v1

    .line 45
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 42
    :catch_3
    move-exception v1

    .line 43
    .local v1, "e":Ljava/io/OptionalDataException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/OptionalDataException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v1    # "e":Ljava/io/OptionalDataException;
    :cond_0
    :goto_0
    nop

    .line 53
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
    .locals 1

    .line 56
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->sInstance:Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    return-object v0
.end method

.method private push(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 1
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 93
    if-nez p1, :cond_0

    .line 94
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->saveRetryStack()V

    .line 99
    return-void
.end method

.method private saveRetryStack()V
    .locals 4

    .line 135
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "save retryStack"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 139
    .local v1, "so":Ljava/io/ObjectOutputStream;
    nop

    .line 140
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 142
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "res":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveRetryStackData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "so":Ljava/io/ObjectOutputStream;
    .end local v2    # "res":Ljava/lang/String;
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkRequestRetried(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z
    .locals 2
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 62
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 60
    .end local p1    # "request":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearRetryHistory()V
    .locals 2

    monitor-enter p0

    .line 118
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    const-string v1, "clearRetryCounter: retry history cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 122
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->saveRetryStack()V

    .line 124
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const-string/jumbo v1, "retry_total_counter"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const-string v1, "last retry time"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 131
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRetryTimesFinished(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Z
    .locals 4
    .param p1, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 152
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getTotalRetryCounter()I

    move-result v0

    .line 153
    .local v0, "totalCounter":I
    sget-object v1, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "totalCounter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMaxRetryCounter()I

    move-result v1

    if-gt v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public declared-synchronized pop()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .locals 1

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 107
    .local v0, "rel":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->saveRetryStack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-object v0

    .line 103
    .end local v0    # "rel":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V
    .locals 3
    .param p1, "retry"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p3, "cloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .param p4, "retryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 161
    if-nez p2, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retryApi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v0

    invoke-interface {p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;->getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 167
    return-void
.end method

.method public declared-synchronized retryLastApi(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Z
    .locals 4
    .param p1, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "cloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .param p3, "retryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    monitor-enter p0

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "lastretry":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-object v0, v1

    .line 176
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
    :cond_0
    if-eqz v0, :cond_1

    .line 177
    sget-object v1, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retryLastApi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;->getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 183
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 170
    .end local v0    # "lastretry":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .end local p1    # "callback":Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .end local p2    # "cloudMessageManagerHelper":Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .end local p3    # "retryStackAdapterHelper":Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveRetryLastFailedTime(J)V
    .locals 1
    .param p1, "time"    # J

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveLastRetryTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 113
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
    .end local p1    # "time":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized searchAndPush(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z
    .locals 3
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    monitor-enter p0

    .line 78
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    if-eqz v1, :cond_2

    instance-of v1, p1, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;

    if-nez v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->checkRequestRetried(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    sget-object v1, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    const-string v2, "equal to the top api. Ignore"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return v0

    .line 86
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
    :cond_1
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->push(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 77
    .end local p1    # "request":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 79
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
    .restart local p1    # "request":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    :cond_2
    :goto_0
    monitor-exit p0

    return v0
.end method
