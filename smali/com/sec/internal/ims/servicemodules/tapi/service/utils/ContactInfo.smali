.class public Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;
    }
.end annotation


# static fields
.field public static final NOT_RCS:I = 0x1

.field public static final NO_INFO:I = 0x8

.field public static final RCS_ACTIVE:I = 0x2

.field public static final REGISTRATION_STATUS_OFFLINE:I = 0x2

.field public static final REGISTRATION_STATUS_ONLINE:I = 0x1

.field public static final REGISTRATION_STATUS_UNKNOWN:I


# instance fields
.field private capabilities:Lcom/gsma/services/rcs/capability/Capabilities;

.field private contact:Lcom/gsma/services/rcs/contact/ContactId;

.field private displayName:Ljava/lang/String;

.field private mBlockingState:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

.field private mBlockingTs:J

.field private presenceInfo:Lcom/sec/ims/presence/PresenceInfo;

.field private rcsStatus:I

.field private rcsStatusTimestamp:J

.field private registrationState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->capabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    .line 144
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->presenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    .line 149
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->contact:Lcom/gsma/services/rcs/contact/ContactId;

    .line 154
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->registrationState:I

    .line 159
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->rcsStatus:I

    .line 164
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->rcsStatusTimestamp:J

    .line 169
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->displayName:Ljava/lang/String;

    .line 174
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->NOT_BLOCKED:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->mBlockingState:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    .line 185
    return-void
.end method


# virtual methods
.method public getBlockingState()Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->mBlockingState:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    return-object v0
.end method

.method public getBlockingTimestamp()J
    .locals 2

    .line 363
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->mBlockingTs:J

    return-wide v0
.end method

.method public getCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->capabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    return-object v0
.end method

.method public getContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->contact:Lcom/gsma/services/rcs/contact/ContactId;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsStatus()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->rcsStatus:I

    return v0
.end method

.method public getRegistrationState()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->registrationState:I

    return v0
.end method

.method public setBlockingState(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;)V
    .locals 0
    .param p1, "state"    # Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    .line 345
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->mBlockingState:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    .line 346
    return-void
.end method

.method public setBlockingTimestamp(J)V
    .locals 0
    .param p1, "ts"    # J

    .line 372
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->mBlockingTs:J

    .line 373
    return-void
.end method

.method public setCapabilities(Lcom/gsma/services/rcs/capability/Capabilities;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/gsma/services/rcs/capability/Capabilities;

    .line 207
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->capabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    .line 208
    return-void
.end method

.method public setContact(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 0
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;

    .line 245
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->contact:Lcom/gsma/services/rcs/contact/ContactId;

    .line 246
    return-void
.end method

.method public setPresenceInfo(Lcom/sec/ims/presence/PresenceInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/sec/ims/presence/PresenceInfo;

    .line 225
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->presenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    .line 226
    return-void
.end method

.method public setRcsDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayname"    # Ljava/lang/String;

    .line 329
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->displayName:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setRcsStatus(I)V
    .locals 0
    .param p1, "rcsStatus"    # I

    .line 263
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->rcsStatus:I

    .line 264
    return-void
.end method

.method public setRcsStatusTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 299
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->rcsStatusTimestamp:J

    .line 300
    return-void
.end method

.method public setRegistrationState(I)V
    .locals 0
    .param p1, "registrationState"    # I

    .line 281
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->registrationState:I

    .line 282
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->contact:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->rcsStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->registrationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->rcsStatusTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->capabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    if-eqz v1, :cond_0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->capabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/capability/Capabilities;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->presenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    if-eqz v1, :cond_1

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Presence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->presenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v2}, Lcom/sec/ims/presence/PresenceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    :cond_1
    return-object v0
.end method
