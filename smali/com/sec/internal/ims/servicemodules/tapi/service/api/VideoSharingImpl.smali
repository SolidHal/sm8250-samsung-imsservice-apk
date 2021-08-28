.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;
.super Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;
.source "VideoSharingImpl.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field public cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

.field private descriptor:Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;

.field private durationTime:J

.field private orientation:I

.field private player:Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;

.field private reasonCode:I

.field private vshSession:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)V
    .locals 3
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .param p2, "player"    # Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;

    .line 118
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->LOG_TAG:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->player:Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;

    .line 66
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->descriptor:Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->orientation:I

    .line 76
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->durationTime:J

    .line 81
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->reasonCode:I

    .line 119
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->vshSession:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    .line 120
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    .line 121
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->player:Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;

    .line 122
    return-void
.end method


# virtual methods
.method public abortSharing()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Cancel session"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->vshSession:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->cancelByUserSession()V

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->removeVideoSharingSession(Ljava/lang/String;)V

    .line 378
    :cond_0
    return-void
.end method

.method public acceptInvitation(Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)V
    .locals 3
    .param p1, "player"    # Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Accept session invitation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->player:Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;

    .line 342
    const/4 v0, 0x0

    .line 344
    .local v0, "localPort":Ljava/lang/Integer;
    :try_start_0
    invoke-interface {p1}, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;->getLocalRtpPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 348
    nop

    .line 349
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->vshSession:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->acceptIncomingSession(I)V

    .line 350
    return-void

    .line 345
    :catch_0
    move-exception v1

    .line 346
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 347
    return-void
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 305
    sget-object v0, Lcom/gsma/services/rcs/RcsService$Direction;->IRRELEVANT:Lcom/gsma/services/rcs/RcsService$Direction;

    .line 306
    .local v0, "direction":Lcom/gsma/services/rcs/RcsService$Direction;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    if-nez v1, :cond_0

    .line 307
    sget-object v0, Lcom/gsma/services/rcs/RcsService$Direction;->INCOMING:Lcom/gsma/services/rcs/RcsService$Direction;

    goto :goto_0

    .line 309
    :cond_0
    sget-object v0, Lcom/gsma/services/rcs/RcsService$Direction;->OUTGOING:Lcom/gsma/services/rcs/RcsService$Direction;

    .line 311
    :goto_0
    return-object v0
.end method

.method public getDuration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->durationTime:J

    return-wide v0
.end method

.method public getOrientation()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->orientation:I

    return v0
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->reasonCode:I

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharingId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 248
    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    .line 249
    .local v0, "state":Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 280
    :pswitch_1
    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->ABORTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    .line 281
    goto :goto_0

    .line 273
    :pswitch_2
    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->REJECTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    .line 274
    goto :goto_0

    .line 265
    :pswitch_3
    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->STARTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    .line 266
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getstate satrted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    goto :goto_0

    .line 258
    :pswitch_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    if-nez v1, :cond_0

    .line 259
    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->ACCEPTING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    goto :goto_0

    .line 260
    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    if-ne v1, v2, :cond_1

    .line 261
    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    goto :goto_0

    .line 251
    :pswitch_5
    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    .line 252
    nop

    .line 285
    :cond_1
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getTimeStamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoDescriptor()Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->descriptor:Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;

    return-object v0
.end method

.method public getVideoEncoding()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "codec":Ljava/lang/String;
    const/4 v1, 0x0

    .line 323
    .local v1, "tempCodec":Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->player:Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;

    if-eqz v2, :cond_0

    .line 324
    invoke-interface {v2}, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;->getCodec()Lcom/gsma/services/rcs/sharing/video/VideoCodec;

    move-result-object v1

    .line 326
    :cond_0
    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {v1}, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_1
    return-object v0
.end method

.method public rejectInvitation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Reject session invitation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->vshSession:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->cancelByUserSession()V

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->removeVideoSharingSession(Ljava/lang/String;)V

    .line 364
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 4
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->getModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;

    move-result-object v0

    .line 406
    .local v0, "vshModule":Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive side || setVshPhoneOrientation vshModule = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    if-eqz v0, :cond_0

    .line 409
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->orientation:I

    .line 410
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;->changeSurfaceOrientation(JI)V

    .line 412
    :cond_0
    return-void
.end method
