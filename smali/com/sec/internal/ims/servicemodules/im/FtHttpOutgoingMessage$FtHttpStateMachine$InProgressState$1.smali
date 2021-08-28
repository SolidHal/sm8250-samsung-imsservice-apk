.class Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState$1;
.super Ljava/lang/Object;
.source "FtHttpOutgoingMessage.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;->creatUploadFileTask(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;

.field final synthetic val$uploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;)V
    .locals 0
    .param p1, "this$2"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;

    .line 827
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState$1;->val$uploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    .locals 4
    .param p1, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "retryTime"    # I
    .param p3, "errorCode"    # I
    .param p4, "fullUploadNeeded"    # Z

    .line 851
    if-eqz p4, :cond_0

    .line 852
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mTransferredBytes:J

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    const/16 v2, 0x12f

    invoke-virtual {v1, v2, p2, p3, p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 856
    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->access$1800(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;Ljava/lang/String;Ljava/lang/String;)Z

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v0, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->getRetryCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    const v2, 0x41000102    # 8.000246f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->listToDumpFormat(IILjava/util/List;)V

    .line 863
    .end local v0    # "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public onCompleted(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .line 843
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 844
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 845
    .local v0, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    const v2, 0x41000100    # 8.000244f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->listToDumpFormat(IILjava/util/List;)V

    .line 846
    return-void
.end method

.method public onFinished()V
    .locals 0

    .line 868
    return-void
.end method

.method public onProgressUpdate(J)V
    .locals 3
    .param p1, "transferred"    # J

    .line 838
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc9

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 839
    return-void
.end method

.method public onStarted()V
    .locals 2

    .line 830
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState$1;->val$uploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    instance-of v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    if-eqz v0, :cond_0

    .line 831
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Posting Started event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onTransferInProgress(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 834
    :cond_0
    return-void
.end method
