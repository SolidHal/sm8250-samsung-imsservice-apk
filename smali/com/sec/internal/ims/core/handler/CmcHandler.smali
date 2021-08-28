.class public abstract Lcom/sec/internal/ims/core/handler/CmcHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "CmcHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;


# instance fields
.field protected final mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 15
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 12
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/CmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 16
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 30
    iget v0, p1, Landroid/os/Message;->what:I

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/CmcHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public registerForCmcMediaEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/CmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 21
    return-void
.end method

.method public startCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "audioSource"    # I
    .param p4, "outputFormat"    # I
    .param p5, "maxFileSize"    # J
    .param p7, "maxDuration"    # I
    .param p8, "outputPath"    # Ljava/lang/String;
    .param p9, "audioEncodingBR"    # I
    .param p10, "audioChannels"    # I
    .param p11, "audioSamplingR"    # I
    .param p12, "audioEncoder"    # I
    .param p13, "durationInterval"    # I
    .param p14, "fileSizeInterval"    # J
    .param p16, "author"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public stopCmcRecord(II)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterForCmcMediaEvent(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 25
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/CmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 26
    return-void
.end method
