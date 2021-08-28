.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;
.super Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;
.source "ImageSharingImpl.java"


# instance fields
.field cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

.field ishSession:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V
    .locals 1
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 55
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->ishSession:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 50
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    .line 56
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->ishSession:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 57
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    .line 58
    return-void
.end method


# virtual methods
.method public abortSharing()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->ishSession:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->cancelByLocalSession()V

    .line 278
    :cond_0
    return-void
.end method

.method public acceptInvitation()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->ishSession:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->acceptIncomingSession()V

    .line 262
    :cond_0
    return-void
.end method

.method public getDirection()I
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "filename":Ljava/lang/String;
    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    return-wide v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    .locals 6

    .line 147
    invoke-static {}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->values()[Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 148
    .local v3, "code":Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    invoke-virtual {v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    return-object v3

    .line 147
    .end local v3    # "code":Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_1
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    return-object v0
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "contact":Ljava/lang/String;
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getSharingId()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    .locals 3

    .line 204
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    .line 205
    .local v0, "state":Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    packed-switch v1, :pswitch_data_0

    .line 244
    :pswitch_0
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    goto :goto_0

    .line 241
    :pswitch_1
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->REJECTED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    .line 242
    goto :goto_0

    .line 233
    :pswitch_2
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->ABORTED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    .line 234
    goto :goto_0

    .line 238
    :pswitch_3
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->FAILED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    .line 239
    goto :goto_0

    .line 224
    :pswitch_4
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->TRANSFERRED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    .line 225
    goto :goto_0

    .line 220
    :pswitch_5
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->STARTED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    .line 221
    goto :goto_0

    .line 212
    :pswitch_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    if-nez v1, :cond_0

    .line 213
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->RINGING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    goto :goto_0

    .line 214
    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->cshInfo:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    if-ne v1, v2, :cond_1

    .line 215
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    goto :goto_0

    .line 208
    :pswitch_7
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    .line 209
    nop

    .line 247
    :cond_1
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getTimeStamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public rejectInvitation()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->ishSession:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->cancelByLocalSession()V

    .line 270
    :cond_0
    return-void
.end method
