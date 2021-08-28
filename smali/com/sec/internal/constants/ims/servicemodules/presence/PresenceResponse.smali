.class public Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;
.super Ljava/lang/Object;
.source "PresenceResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;,
        Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    }
.end annotation


# instance fields
.field private mError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field private mErrorPhrase:Ljava/lang/String;

.field private mPhoneId:I

.field private mRetryTime:I

.field private mSipErrorCode:I

.field private mSuccess:Z


# direct methods
.method public constructor <init>(ZILjava/lang/String;II)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "error"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "retryTime"    # I
    .param p5, "phoneId"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSuccess:Z

    .line 26
    iput p2, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSipErrorCode:I

    .line 27
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mErrorPhrase:Ljava/lang/String;

    .line 28
    if-nez p1, :cond_0

    .line 29
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->translateSipError(ILjava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 31
    :cond_0
    iput p4, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mRetryTime:I

    .line 32
    iput p5, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mPhoneId:I

    .line 33
    return-void
.end method

.method private checkReasonPhrase(ILjava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    .locals 2
    .param p1, "error"    # I
    .param p2, "phrase"    # Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->UNSPECIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 136
    .local v0, "reason":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    const/16 v1, 0x193

    if-eq p1, v1, :cond_2

    const/16 v1, 0x198

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    const-string/jumbo v1, "transaction timeout"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->REQUEST_TIMEOUT_RETRY:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_0

    .line 156
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->REQUEST_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 158
    goto :goto_0

    .line 138
    :cond_2
    const-string v1, "not authorized for presence"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_PROVISIONED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_0

    .line 140
    :cond_3
    const-string/jumbo v1, "user not registered"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_0

    .line 143
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 145
    nop

    .line 164
    :goto_0
    return-object v0
.end method

.method private translateSipError(ILjava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    .locals 2
    .param p1, "error"    # I
    .param p2, "phrase"    # Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->UNSPECIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 66
    .local v0, "reason":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    if-eqz p2, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    move-object p2, v1

    .line 68
    const/16 v1, 0x384

    if-lt p1, v1, :cond_1

    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_1

    .line 69
    const/16 p1, 0x3e7

    .line 72
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 126
    :sswitch_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 127
    goto :goto_1

    .line 122
    :sswitch_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 123
    goto :goto_1

    .line 119
    :sswitch_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 120
    goto :goto_1

    .line 116
    :sswitch_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->BUSY_EVERYWHERE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 117
    goto :goto_1

    .line 113
    :sswitch_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 114
    goto :goto_1

    .line 110
    :sswitch_5
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->SERVER_INTERNAL_ERROR:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 111
    goto :goto_1

    .line 107
    :sswitch_6
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->BAD_EVENT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 108
    goto :goto_1

    .line 104
    :sswitch_7
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 105
    goto :goto_1

    .line 101
    :sswitch_8
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 102
    goto :goto_1

    .line 98
    :sswitch_9
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->INTERVAL_TOO_SHORT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 99
    goto :goto_1

    .line 95
    :sswitch_a
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->UNSUPPORTED_MEDIA_TYPE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 96
    goto :goto_1

    .line 92
    :sswitch_b
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->ENTITY_TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 93
    goto :goto_1

    .line 89
    :sswitch_c
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->CONDITIONAL_REQUEST_FAILED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 90
    goto :goto_1

    .line 86
    :sswitch_d
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->checkReasonPhrase(ILjava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    move-result-object v0

    .line 87
    goto :goto_1

    .line 83
    :sswitch_e
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->METHOD_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 84
    goto :goto_1

    .line 80
    :sswitch_f
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 81
    goto :goto_1

    .line 77
    :sswitch_10
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->checkReasonPhrase(ILjava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    move-result-object v0

    .line 78
    goto :goto_1

    .line 74
    :sswitch_11
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 75
    nop

    .line 130
    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_11
        0x193 -> :sswitch_10
        0x194 -> :sswitch_f
        0x195 -> :sswitch_e
        0x198 -> :sswitch_d
        0x19c -> :sswitch_c
        0x19d -> :sswitch_b
        0x19f -> :sswitch_a
        0x1a7 -> :sswitch_9
        0x1e0 -> :sswitch_8
        0x1e6 -> :sswitch_7
        0x1e9 -> :sswitch_6
        0x1f4 -> :sswitch_5
        0x1f7 -> :sswitch_4
        0x258 -> :sswitch_3
        0x25b -> :sswitch_2
        0x25c -> :sswitch_1
        0x2c4 -> :sswitch_0
        0x3e7 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mErrorPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mPhoneId:I

    return v0
.end method

.method public getReason()Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    return-object v0
.end method

.method public getRetryTime()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mRetryTime:I

    return v0
.end method

.method public getSipError()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSipErrorCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSuccess:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PresenceResponse [mSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSipErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSipErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mErrorPhrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mErrorPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRetryTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mRetryTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
