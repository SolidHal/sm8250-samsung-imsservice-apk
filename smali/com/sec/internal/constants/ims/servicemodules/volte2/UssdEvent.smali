.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;
.super Ljava/lang/Object;
.source "UssdEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;
    }
.end annotation


# instance fields
.field private mDCS:I

.field private mData:[B

.field private mSessionID:I

.field private mSipErrorCode:Lcom/sec/ims/util/SipError;

.field private mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSessionID:I

    .line 7
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->NOT_INITIALIZED:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    .line 8
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mStatus:I

    .line 9
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mDCS:I

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mData:[B

    .line 11
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    .line 21
    return-void
.end method

.method private setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 56
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mData:[B

    .line 57
    return-void
.end method


# virtual methods
.method public getDCS()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mDCS:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mData:[B

    return-object v0
.end method

.method public getErrorCode()Lcom/sec/ims/util/SipError;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    return-object v0
.end method

.method public getSessionID()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSessionID:I

    return v0
.end method

.method public getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mStatus:I

    return v0
.end method

.method public setDCS(I)V
    .locals 0
    .param p1, "dcs"    # I

    .line 48
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mDCS:I

    .line 49
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 60
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData([B)V

    goto :goto_0

    .line 62
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 63
    move-object v0, p1

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData([B)V

    goto :goto_0

    .line 64
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 65
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData([B)V

    .line 67
    :cond_2
    :goto_0
    return-void
.end method

.method public setErrorCode(Lcom/sec/ims/util/SipError;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/sec/ims/util/SipError;

    .line 74
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    .line 75
    return-void
.end method

.method public setSessionID(I)V
    .locals 0
    .param p1, "sessionID"    # I

    .line 24
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSessionID:I

    .line 25
    return-void
.end method

.method public setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;)V
    .locals 0
    .param p1, "state"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    .line 32
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    .line 33
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 40
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mStatus:I

    .line 41
    return-void
.end method
