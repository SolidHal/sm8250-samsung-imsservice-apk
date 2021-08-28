.class Lcom/sec/internal/ims/servicemodules/im/ImMessage$1;
.super Ljava/lang/Object;
.source "ImMessage.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/im/ImMessage;->requestReliableImageDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/ImMessage;

.field final synthetic val$msg:Lcom/sec/internal/ims/servicemodules/im/ImMessage;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImMessage;Lcom/sec/internal/ims/servicemodules/im/ImMessage;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 118
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$1;->val$msg:Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V
    .locals 2
    .param p1, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "retryTime"    # I
    .param p3, "errorCode"    # I

    .line 134
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "requestReliableImageDownload, onCanceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->access$300(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$1;->val$msg:Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;->onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V

    .line 136
    return-void
.end method

.method public onCompleted(J)V
    .locals 2
    .param p1, "transferred"    # J

    .line 127
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "requestReliableImageDownload, onCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$1;->val$msg:Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->setReliableMessage(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->access$300(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$1;->val$msg:Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;->onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V

    .line 130
    return-void
.end method

.method public onProgressUpdate(J)V
    .locals 0
    .param p1, "transferred"    # J

    .line 123
    return-void
.end method
