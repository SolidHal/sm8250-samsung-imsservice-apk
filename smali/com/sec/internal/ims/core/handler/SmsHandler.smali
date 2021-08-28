.class public Lcom/sec/internal/ims/core/handler/SmsHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "SmsHandler.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 12
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 13
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 29
    iget v0, p1, Landroid/os/Message;->what:I

    .line 31
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/SmsHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public registerForSMSEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;II)V
    .locals 0
    .param p1, "smsc"    # Ljava/lang/String;
    .param p2, "localUri"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "isDeliverReport"    # Z
    .param p6, "callId"    # Ljava/lang/String;
    .param p7, "msgId"    # I
    .param p8, "regId"    # I

    .line 38
    return-void
.end method

.method public sendSMSResponse(ILjava/lang/String;I)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "responseStr"    # Ljava/lang/String;
    .param p3, "statusCode"    # I

    .line 17
    return-void
.end method

.method public setMsgAppInfoToSipUa(ILjava/lang/String;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 42
    return-void
.end method
