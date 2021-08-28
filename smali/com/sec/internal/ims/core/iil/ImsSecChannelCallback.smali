.class public Lcom/sec/internal/ims/core/iil/ImsSecChannelCallback;
.super Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannelCallback$Stub;
.source "ImsSecChannelCallback.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ImsSecChannelCallback"


# instance fields
.field mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)V
    .locals 0
    .param p1, "ipcDispatcher"    # Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 14
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannelCallback$Stub;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/ImsSecChannelCallback;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 16
    return-void
.end method


# virtual methods
.method public receive(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "ImsSecChannelCallback"

    const-string/jumbo v1, "receive"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :try_start_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 24
    .local v1, "response":[B
    if-eqz v1, :cond_0

    .line 25
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/ImsSecChannelCallback;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    array-length v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->processResponse([BI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v1    # "response":[B
    :cond_0
    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method
