.class public Lcom/sec/internal/ims/servicemodules/im/translator/TranslatorCollection;
.super Ljava/lang/Object;
.source "TranslatorCollection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TranslatorCollection"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static translateEngineParticipantInfo(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .locals 3
    .param p0, "info"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
    .param p1, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "status":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    if-eqz p0, :cond_9

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mParticipantStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    if-eqz v1, :cond_9

    .line 33
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/translator/TranslatorCollection$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConferenceParticipantInfo$ImConferenceParticipantStatus:[I

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mParticipantStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No translation for the following Engine\'s participant Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mParticipantStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslatorCollection"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 54
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->TO_INVITE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    :goto_0
    move-object v0, v1

    .line 55
    goto :goto_2

    .line 38
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionReason:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->DEPARTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUserElemState:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 41
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionReason:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    if-ne v1, v2, :cond_5

    .line 42
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionCause:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v2, :cond_4

    .line 43
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    goto :goto_2

    .line 45
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    goto :goto_2

    .line 47
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionReason:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->BOOTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    if-ne v1, v2, :cond_6

    .line 48
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    goto :goto_2

    .line 50
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 52
    goto :goto_2

    .line 40
    :cond_7
    :goto_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    goto :goto_2

    .line 35
    :cond_8
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 62
    :cond_9
    :goto_2
    return-object v0
.end method
