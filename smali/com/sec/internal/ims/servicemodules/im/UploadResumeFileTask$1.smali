.class Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;
.super Ljava/lang/Object;
.source "UploadResumeFileTask.java"

# interfaces
.implements Lcom/sec/internal/helper/HttpRequest$UploadProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->doResumeFile(Ljava/net/URL;JJJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

.field final synthetic val$first:J


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

    .line 323
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;->val$first:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public onUpload(JJ)V
    .locals 8
    .param p1, "uploaded"    # J
    .param p3, "total"    # J

    .line 327
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;->val$first:J

    add-long/2addr v0, p1

    .line 328
    .local v0, "transferred":J
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUpload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

    iget-wide v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mTotal:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x64

    mul-long/2addr v4, v0

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

    iget-wide v6, v6, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mTotal:J

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "%)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mTransferred:J

    const-wide/16 v4, 0x32

    mul-long/2addr v2, v4

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

    iget-wide v6, v6, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mTotal:J

    div-long/2addr v2, v6

    mul-long/2addr v4, v0

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

    iget-wide v6, v6, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mTotal:J

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 332
    .local v2, "currentTime":J
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onUpload: currentTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", mUploadProgressElapsed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

    iget-wide v6, v6, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mUploadProgressElapsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

    iget-wide v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mUploadProgressElapsed:J

    const-wide/16 v6, 0xc8

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 334
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    invoke-interface {v4, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;->onProgressUpdate(J)V

    .line 335
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

    iput-wide v2, v4, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mUploadProgressElapsed:J

    .line 338
    .end local v2    # "currentTime":J
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

    iput-wide v0, v2, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mTransferred:J

    .line 339
    return-void
.end method
