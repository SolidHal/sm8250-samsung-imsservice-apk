.class public abstract Lcom/sec/internal/ims/core/handler/ImHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "ImHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 33
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 35
    return-void
.end method


# virtual methods
.method public abstract acceptFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
.end method

.method public abstract acceptImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;)V
.end method

.method public abstract addImParticipants(Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;)V
.end method

.method public abstract cancelFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
.end method

.method public abstract extendToGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/ImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public abstract registerForComposingNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForConferenceInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImSessionClosed(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImdnFailed(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImdnResponse(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMessageFailed(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
.end method

.method public abstract sendComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;)V
.end method

.method public abstract sendDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
.end method

.method public abstract sendDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
.end method

.method public abstract sendFtDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
.end method

.method public abstract sendFtDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
.end method

.method public abstract sendFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;)V
.end method

.method public abstract sendImMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;)V
.end method

.method public setFtMessageId(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "msgId"    # I

    .line 138
    return-void
.end method

.method public abstract startImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V
.end method

.method public abstract stopImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V
.end method

.method public abstract unregisterForImIncomingMessage(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImIncomingSession(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImSessionClosed(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImSessionEstablished(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImdnResponse(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMessageFailed(Landroid/os/Handler;)V
.end method
