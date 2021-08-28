.class Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;
.super Ljava/lang/Object;
.source "FtHttpIncomingMessage.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->downloadReliable(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

    .line 498
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V
    .locals 1
    .param p1, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "retryTime"    # I
    .param p3, "errorCode"    # I

    .line 513
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->access$1400(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;)V

    .line 514
    return-void
.end method

.method public onCompleted(J)V
    .locals 2
    .param p1, "transferred"    # J

    .line 506
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->setReliableMessage(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->access$1400(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;)V

    .line 508
    return-void
.end method

.method public onProgressUpdate(J)V
    .locals 0
    .param p1, "transferred"    # J

    .line 502
    return-void
.end method
