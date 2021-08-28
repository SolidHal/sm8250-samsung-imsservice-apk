.class final Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;
.super Lcom/sec/internal/helper/State;
.source "FtHttpIncomingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$1;

    .line 241
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 244
    const/4 v0, 0x1

    .line 245
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 251
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event, current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->onSendDeliveredNotificationDone()V

    .line 248
    nop

    .line 258
    :goto_0
    return v0
.end method
