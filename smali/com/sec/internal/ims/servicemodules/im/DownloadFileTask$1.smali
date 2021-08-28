.class Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;
.super Ljava/lang/Object;
.source "DownloadFileTask.java"

# interfaces
.implements Lcom/sec/internal/helper/HttpRequest$UploadProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->doInBackground([Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;)Ljava/lang/Long;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    .line 126
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public onUpload(JJ)V
    .locals 8
    .param p1, "uploaded"    # J
    .param p3, "total"    # J

    .line 130
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$100(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$200(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$100(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v2

    add-long/2addr v2, p1

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$200(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$300(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v0

    const-wide/16 v2, 0x32

    mul-long/2addr v0, v2

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$200(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v4

    div-long/2addr v0, v4

    mul-long/2addr v2, p1

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$200(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v4

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 134
    .local v0, "currentTime":J
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUpload: currentTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mDownloadProgressElapsed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$400(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$400(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$100(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$200(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v4

    const-wide/16 v6, 0x2800

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$500(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$100(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v3

    add-long/2addr v3, p1

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onProgressUpdate(J)V

    .line 138
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v2, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$402(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;J)J

    .line 141
    .end local v0    # "currentTime":J
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$302(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;J)J

    .line 142
    return-void
.end method
