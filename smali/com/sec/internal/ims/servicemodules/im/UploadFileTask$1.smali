.class Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;
.super Ljava/lang/Object;
.source "UploadFileTask.java"

# interfaces
.implements Lcom/sec/internal/helper/HttpRequest$UploadProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->doInBackground([Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;)Ljava/lang/Long;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    .line 161
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public onUpload(JJ)V
    .locals 6
    .param p1, "uploaded"    # J
    .param p3, "total"    # J

    .line 165
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTotal:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iget-wide v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTotal:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iget-wide v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    const-wide/16 v2, 0x32

    mul-long/2addr v0, v2

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iget-wide v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTotal:J

    div-long/2addr v0, v4

    mul-long/2addr v2, p1

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iget-wide v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTotal:J

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 169
    .local v0, "currentTime":J
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUpload: currentTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mUploadProgressElapsed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iget-wide v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mUploadProgressElapsed:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mUploadProgressElapsed:J

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    invoke-interface {v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;->onProgressUpdate(J)V

    .line 173
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iput-wide v0, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mUploadProgressElapsed:J

    .line 176
    .end local v0    # "currentTime":J
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iput-wide p1, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    .line 177
    return-void
.end method
