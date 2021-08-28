.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;
.super Ljava/lang/Object;
.source "ImsExternalCallController.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

.field private mPullingSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

.field private mTransferSessionId:I

.field private mTransferTarget:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V
    .locals 1
    .param p1, "vsm"    # Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferSessionId:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mPullingSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 27
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 28
    return-void
.end method


# virtual methods
.method public consultativeTransferCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V
    .locals 7
    .param p1, "activeSession"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p2, "heldSession"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p3, "regInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 62
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 64
    .local v0, "phoneId":I
    if-nez p3, :cond_0

    .line 65
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    goto :goto_0

    .line 67
    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_0
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 70
    .restart local v1    # "mno":Lcom/sec/internal/constants/Mno;
    :goto_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_CZ:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/Mno;->EDF:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELEFONICA_SPAIN:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v3

    .line 73
    .local v2, "noNeedtoHoldActiveCallForECT":Z
    :goto_2
    if-eqz v2, :cond_3

    .line 74
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    const-string v4, "No need to hold an active call for ECT."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    iput v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferSessionId:I

    .line 76
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferTarget:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->pushCallInternal()V

    goto/16 :goto_6

    .line 79
    :cond_3
    new-instance v4, Lcom/sec/ims/volte2/data/MediaProfile;

    sget-object v5, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;I)V

    .line 81
    .local v4, "media":Lcom/sec/ims/volte2/data/MediaProfile;
    :try_start_0
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->hold(Lcom/sec/ims/volte2/data/MediaProfile;)V

    .line 82
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setHoldBeforeTransfer(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_3

    .line 83
    :catch_0
    move-exception v3

    .line 84
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 87
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    sget-object v3, Lcom/sec/internal/constants/Mno;->VODAFONE_SPAIN:Lcom/sec/internal/constants/Mno;

    if-eq v1, v3, :cond_5

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-eq v1, v3, :cond_5

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELENOR_DK:Lcom/sec/internal/constants/Mno;

    if-eq v1, v3, :cond_5

    sget-object v3, Lcom/sec/internal/constants/Mno;->TDC_DK:Lcom/sec/internal/constants/Mno;

    if-eq v1, v3, :cond_5

    sget-object v3, Lcom/sec/internal/constants/Mno;->H3G_DK:Lcom/sec/internal/constants/Mno;

    if-eq v1, v3, :cond_5

    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-eq v1, v3, :cond_5

    sget-object v3, Lcom/sec/internal/constants/Mno;->DLOG:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_4

    goto :goto_4

    .line 92
    :cond_4
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    iput v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferSessionId:I

    .line 93
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferTarget:Ljava/lang/String;

    goto :goto_5

    .line 89
    :cond_5
    :goto_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    iput v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferSessionId:I

    .line 90
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferTarget:Ljava/lang/String;

    .line 95
    :goto_5
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConsultativeTrasnfer mTransferSessionId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mTransferTarget : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferTarget:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v4    # "media":Lcom/sec/ims/volte2/data/MediaProfile;
    :goto_6
    return-void
.end method

.method public pushCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;Lcom/sec/ims/ImsRegistration;)V
    .locals 4
    .param p1, "callSession"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p2, "targetNumber"    # Ljava/lang/String;
    .param p3, "regInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "isSoftphoneEnabled":Z
    if-eqz p3, :cond_0

    .line 33
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    .line 39
    :cond_1
    new-instance v1, Lcom/sec/ims/volte2/data/MediaProfile;

    sget-object v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;I)V

    .line 41
    .local v1, "media":Lcom/sec/ims/volte2/data/MediaProfile;
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->hold(Lcom/sec/ims/volte2/data/MediaProfile;)V

    .line 42
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setHoldBeforeTransfer(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 46
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferSessionId:I

    .line 47
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferTarget:Ljava/lang/String;

    goto :goto_2

    .line 37
    .end local v1    # "media":Lcom/sec/ims/volte2/data/MediaProfile;
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->transfer(ILjava/lang/String;)V

    .line 49
    :goto_2
    return-void
.end method

.method public pushCallInternal()V
    .locals 2

    .line 52
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "pushCallInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferSessionId:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferTarget:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->transfer(ILjava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferSessionId:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferTarget:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public transfer(ILjava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "msisdn"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 101
    .local v0, "extSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->pushCall(Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method public transferCall(ILjava/lang/String;Ljava/lang/String;[Lcom/sec/ims/DialogEvent;)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .param p3, "dialogId"    # Ljava/lang/String;
    .param p4, "lastDialogEvent"    # [Lcom/sec/ims/DialogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try to transferCall from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to Dialog Id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "targetDialog":Lcom/sec/ims/Dialog;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 116
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_4

    .line 117
    if-eqz v0, :cond_1

    .line 118
    goto :goto_3

    .line 120
    :cond_1
    aget-object v2, p4, v1

    if-eqz v2, :cond_3

    .line 121
    aget-object v2, p4, v1

    invoke-virtual {v2}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/Dialog;

    .line 122
    .local v3, "dialog":Lcom/sec/ims/Dialog;
    invoke-virtual {v3}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, p4, v1

    .line 123
    invoke-virtual {v4}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    move p1, v1

    .line 125
    move-object v0, v3

    .line 126
    goto :goto_2

    .line 128
    .end local v3    # "dialog":Lcom/sec/ims/Dialog;
    :cond_2
    goto :goto_1

    .line 116
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "i":I
    :cond_4
    :goto_3
    aget-object v1, p4, p1

    if-eqz v1, :cond_b

    .line 133
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    aget-object v2, p4, p1

    invoke-virtual {v2}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRegInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 134
    .local v1, "regInfo":Lcom/sec/ims/ImsRegistration;
    if-nez v1, :cond_5

    .line 135
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "can\'t call transfer without registration"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 138
    :cond_5
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v2

    .line 140
    .local v2, "isSamsungMdmnCall":Z
    aget-object v3, p4, p1

    invoke-virtual {v3}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/Dialog;

    .line 141
    .local v4, "dialog":Lcom/sec/ims/Dialog;
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 142
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "find target Dialog "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    move-object v0, v4

    .line 144
    goto :goto_5

    .line 146
    .end local v4    # "dialog":Lcom/sec/ims/Dialog;
    :cond_6
    goto :goto_4

    .line 148
    :cond_7
    :goto_5
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 149
    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getSipLocalTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getSipRemoteTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 150
    new-instance v3, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v3}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 151
    .local v3, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    new-instance v4, Lcom/sec/ims/volte2/data/MediaProfile;

    sget-object v5, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;I)V

    .line 152
    .local v4, "media":Lcom/sec/ims/volte2/data/MediaProfile;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setPullCall(Z)V

    .line 153
    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 154
    invoke-virtual {v3, v4}, Lcom/sec/ims/volte2/data/CallProfile;->setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)V

    .line 155
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setCLI(Ljava/lang/String;)V

    .line 157
    if-eqz v2, :cond_8

    .line 158
    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getSessionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/ims/Dialog;->setMdmnExtNumber(Ljava/lang/String;)V

    .line 161
    :cond_8
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    aget-object v6, p4, p1

    invoke-virtual {v6}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v6

    invoke-interface {v5, v3, v6}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mPullingSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 162
    invoke-virtual {v5, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->pulling(Ljava/lang/String;Lcom/sec/ims/Dialog;)I

    move-result v5

    .line 163
    .local v5, "id":I
    sget-object v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pulling Success : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-eqz v2, :cond_9

    .line 166
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mPullingSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    .line 167
    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getSessionDescription()Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-virtual {v6, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 169
    :cond_9
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mPullingSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v7

    invoke-interface {v6, p1, v7}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->notifyOnPulling(II)V

    .line 170
    .end local v3    # "profile":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v4    # "media":Lcom/sec/ims/volte2/data/MediaProfile;
    .end local v5    # "id":I
    goto :goto_6

    .line 171
    :cond_a
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Can\'t find proper target dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v1    # "regInfo":Lcom/sec/ims/ImsRegistration;
    .end local v2    # "isSamsungMdmnCall":Z
    :goto_6
    goto :goto_7

    .line 174
    :cond_b
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "LastDialogEvent is Empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_7
    return-void

    .line 112
    :cond_c
    :goto_8
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ignore wrong transfer reqeuset"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method
