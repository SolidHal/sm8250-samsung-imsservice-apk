.class public abstract Lcom/sec/internal/ims/core/handler/SlmHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "SlmHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 29
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 30
    return-void
.end method


# virtual methods
.method public acceptFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
    .locals 0
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;

    .line 42
    return-void
.end method

.method public acceptSlmLMMSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;)V
    .locals 0
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;

    .line 90
    return-void
.end method

.method public cancelFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 0
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 50
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/SlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public registerForSlmImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public registerForSlmIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public registerForSlmIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public registerForSlmLMMIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public registerForSlmTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public rejectFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 0
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 46
    return-void
.end method

.method public rejectSlmLMMSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;)V
    .locals 0
    .param p1, "rejectParams"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;

    .line 94
    return-void
.end method

.method public sendFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;)V
    .locals 0
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;

    .line 38
    return-void
.end method

.method public sendSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;)V
    .locals 0
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;

    .line 34
    return-void
.end method

.method public unregisterAllSLMFileTransferProgress()V
    .locals 0

    .line 86
    return-void
.end method

.method public unregisterForSlmImdnNotification(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 82
    return-void
.end method

.method public unregisterForSlmIncomingFileTransfer(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 66
    return-void
.end method

.method public unregisterForSlmIncomingMessage(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 58
    return-void
.end method

.method public unregisterForSlmLMMIncomingSession(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 102
    return-void
.end method

.method public unregisterForSlmTransferProgress(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 74
    return-void
.end method
