.class Lcom/sec/internal/ims/core/handler/secims/ImsRequest;
.super Ljava/lang/Object;
.source "StackIF.java"


# instance fields
.field private mReqBuffer:Lcom/google/flatbuffers/FlatBufferBuilder;

.field mResult:Landroid/os/Message;

.field mTid:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtain(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Message;)Lcom/sec/internal/ims/core/handler/secims/ImsRequest;
    .locals 3
    .param p0, "requestBuffer"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "result"    # Landroid/os/Message;

    .line 183
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;-><init>()V

    .line 185
    .local v0, "ir":Lcom/sec/internal/ims/core/handler/secims/ImsRequest;
    iput-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mReqBuffer:Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 186
    iput-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mResult:Landroid/os/Message;

    .line 188
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Message target must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getReqBuffer()Lcom/google/flatbuffers/FlatBufferBuilder;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mReqBuffer:Lcom/google/flatbuffers/FlatBufferBuilder;

    return-object v0
.end method
