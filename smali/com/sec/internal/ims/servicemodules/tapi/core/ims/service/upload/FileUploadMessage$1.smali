.class Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;
.super Ljava/lang/Object;
.source "FileUploadMessage.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    .line 151
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    .locals 3
    .param p1, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "retryTime"    # I
    .param p3, "errorCode"    # I
    .param p4, "fullUploadNeeded"    # Z

    .line 183
    if-eqz p4, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$102(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;J)J

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$000(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$000(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    return-void
.end method

.method public onCompleted(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$000(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$000(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    return-void
.end method

.method public onFinished()V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$200(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$300(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$000(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$000(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    :cond_0
    return-void
.end method

.method public onProgressUpdate(J)V
    .locals 4
    .param p1, "transferred"    # J

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$000(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$000(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    return-void
.end method

.method public onStarted()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$000(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$000(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    return-void
.end method
