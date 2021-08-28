.class public Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
.super Ljava/lang/Object;
.source "SmsEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/sms/SmsEvent$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMSIP_CST_NOTI_INFO:I = 0xc

.field public static final SMSIP_CST_RECEIVED:I = 0xb


# instance fields
.field private mCallID:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mData:[B

.field private mEventType:I

.field private mLocalUri:Ljava/lang/String;

.field private mMessageID:I

.field private mReason:Ljava/lang/String;

.field private mReasonCode:I

.field private mRegistration:Lcom/sec/ims/ImsRegistration;

.field private mRetryAfter:I

.field private mRpRef:I

.field private mSmscAddr:Ljava/lang/String;

.field private mState:I

.field private mTpDcs:I

.field private mTpMr:I

.field private mTpPid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 256
    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent$1;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent$1;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 26
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    .line 27
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    .line 28
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    .line 29
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    .line 30
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mLocalUri:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    .line 36
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpPid:I

    .line 37
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpDcs:I

    .line 38
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    .line 40
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    .line 41
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    .line 43
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContent:Ljava/lang/String;

    .line 93
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 94
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 26
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    .line 27
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    .line 28
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    .line 29
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    .line 30
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mLocalUri:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    .line 36
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpPid:I

    .line 37
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpDcs:I

    .line 38
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    .line 40
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    .line 41
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    .line 43
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContent:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .local v1, "mDataLen":I
    if-lez v1, :cond_0

    .line 76
    new-array v0, v1, [B

    .line 77
    .local v0, "mDataTemp":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 78
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    .line 79
    .end local v0    # "mDataTemp":[B
    goto :goto_0

    .line 80
    :cond_0
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    .line 82
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/ImsRegistration;IIILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "eventType"    # I
    .param p3, "messageID"    # I
    .param p4, "reasonCode"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "data"    # [B
    .param p7, "contentType"    # Ljava/lang/String;
    .param p8, "callId"    # Ljava/lang/String;
    .param p9, "smscAddr"    # Ljava/lang/String;
    .param p10, "retryAfter"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 26
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    .line 27
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    .line 28
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    .line 29
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    .line 30
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mLocalUri:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    .line 36
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpPid:I

    .line 37
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpDcs:I

    .line 38
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    .line 40
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    .line 41
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    .line 43
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContent:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 62
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    .line 63
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    .line 64
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    .line 65
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    .line 66
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    .line 67
    iput-object p8, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    .line 68
    iput-object p9, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    .line 69
    iput p10, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    .line 70
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public getCallID()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    return v0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object v0
.end method

.method public getLocalUri()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mLocalUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageID()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonCode()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    return v0
.end method

.method public getRetryAfter()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    return v0
.end method

.method public getRpRef()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    return v0
.end method

.method public getSmscAddr()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    return v0
.end method

.method public getTpDcs()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpDcs:I

    return v0
.end method

.method public getTpMr()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    return v0
.end method

.method public getTpPid()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpPid:I

    return v0
.end method

.method public setCallID(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .line 202
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 230
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContent:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 178
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    .line 179
    return-void
.end method

.method public setEventType(I)V
    .locals 0
    .param p1, "eventType"    # I

    .line 182
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    .line 183
    return-void
.end method

.method public setImsRegistration(Lcom/sec/ims/ImsRegistration;)V
    .locals 0
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 166
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 167
    return-void
.end method

.method public setLocalUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "localUri"    # Ljava/lang/String;

    .line 210
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mLocalUri:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setMessageID(I)V
    .locals 0
    .param p1, "messageId"    # I

    .line 186
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    .line 187
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setReasonCode(I)V
    .locals 0
    .param p1, "reasonCode"    # I

    .line 190
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    .line 191
    return-void
.end method

.method public setRetryAfter(I)V
    .locals 0
    .param p1, "retryAfter"    # I

    .line 214
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    .line 215
    return-void
.end method

.method public setRpRef(I)V
    .locals 0
    .param p1, "rpRef"    # I

    .line 174
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    .line 175
    return-void
.end method

.method public setSmscAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "smscAddr"    # Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 170
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    .line 171
    return-void
.end method

.method public setTpDcs(I)V
    .locals 0
    .param p1, "TpDcs"    # I

    .line 222
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpDcs:I

    .line 223
    return-void
.end method

.method public setTpMr(I)V
    .locals 0
    .param p1, "TpMr"    # I

    .line 226
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    .line 227
    return-void
.end method

.method public setTpPid(I)V
    .locals 0
    .param p1, "TpPid"    # I

    .line 218
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpPid:I

    .line 219
    return-void
.end method

.method public toKeyDump()Ljava/lang/String;
    .locals 4

    .line 332
    const-string v0, ""

    .line 334
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    const-string v2, ","

    const/16 v3, 0x64

    if-lt v1, v3, :cond_0

    const/16 v3, 0x6a

    if-gt v1, v3, :cond_0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    if-ltz v1, :cond_1

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    if-ltz v1, :cond_2

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_2
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    if-ltz v1, :cond_3

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_3
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    if-ltz v1, :cond_4

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 347
    const-string v2, "application/vnd.3gpp.sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "3gpp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 350
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "3gpp2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    :cond_7
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 270
    const-string v0, ""

    .line 272
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[NONE] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 292
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[INCOMING] state MT_RECEIVING_DELIVER_REPORT_ACK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    goto :goto_0

    .line 289
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[INCOMING] state MT_SENDING_DELIVER_REPORT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    goto :goto_0

    .line 283
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[INCOMING] state MT_RECEIVING_STATUS_REPORT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    goto :goto_0

    .line 286
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[INCOMING] state MT_RECEIVING_INCOMING_SMS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    goto :goto_0

    .line 280
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[OUTGOING] state MO_RECEIVING_202_ACCEPTED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    goto :goto_0

    .line 277
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[OUTGOING] state MO_RECEIVING_CALLID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    goto :goto_0

    .line 274
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[OUTGOING] state MO_SENDING_START "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    nop

    .line 298
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    const-string v2, "] "

    if-eqz v1, :cond_0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "contentType ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    if-ltz v1, :cond_1

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "messageID ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    if-ltz v1, :cond_2

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "rpRef ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    :cond_2
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    if-ltz v1, :cond_4

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reasonCode ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    const v4, 0x8000

    if-ge v3, v4, :cond_3

    .line 306
    goto :goto_1

    :cond_3
    add-int/lit16 v3, v3, -0x8000

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reason ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "callID ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 312
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v1

    const-string/jumbo v3, "smscAddr ["

    if-nez v1, :cond_7

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 315
    :cond_7
    const/4 v1, 0x3

    .line 316
    .local v1, "displayNum":I
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    const-string/jumbo v5, "sip:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    const-string/jumbo v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 317
    :cond_8
    add-int/lit8 v1, v1, 0x4

    .line 319
    :cond_9
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_a

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 322
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .end local v1    # "displayNum":I
    :cond_b
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_c

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "regId ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    :cond_c
    return-object v0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    if-eqz v0, :cond_0

    .line 241
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 244
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    return-void
.end method
