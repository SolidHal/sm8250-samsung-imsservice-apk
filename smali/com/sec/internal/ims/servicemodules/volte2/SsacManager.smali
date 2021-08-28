.class public Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;
.super Landroid/os/Handler;
.source "SsacManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SsacManager"

.field private static final UNAVAILABE_FACTOR:I = 0x64


# instance fields
.field mIsAlwaysBarred:[Z

.field private final mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

.field private final mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

.field mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

.field needReRegiAfterCall:[Z


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;I)V
    .locals 2
    .param p1, "module"    # Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;
    .param p2, "regiMgr"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p3, "phoneCount"    # I

    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 45
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 47
    new-array v0, p3, [Z

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->needReRegiAfterCall:[Z

    .line 48
    new-array v1, p3, [Z

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    .line 49
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 50
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 52
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p3}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;-><init>(ILcom/sec/internal/ims/servicemodules/volte2/SsacManager;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    .line 53
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p3}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;-><init>(ILcom/sec/internal/ims/servicemodules/volte2/SsacManager;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    .line 29
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    return-object v0
.end method

.method private reRegisterBySSAC(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reRegisterBySSAC["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] : updateRegistrationBySSAC ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    aget-boolean v1, v1, p1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SsacManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    aget-boolean v1, v1, p1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateRegistrationBySSAC(IZ)V

    .line 69
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 124
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->needReRegiAfterCall:[Z

    aget-boolean v2, v1, v0

    if-eqz v2, :cond_0

    .line 125
    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 126
    const-string v1, "SsacManager"

    const-string v2, "Call Ended. Now update Registration By SSAC."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->reRegisterBySSAC(I)V

    .line 130
    .end local v0    # "phoneId":I
    :cond_0
    return-void
.end method

.method public isCallBarred(II)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "callType"    # I

    .line 57
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->isCallBarred(I)Z

    move-result v0

    return v0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->isCallBarred(I)Z

    move-result v0

    return v0
.end method

.method public updateSSACInfo(IIIII)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "voiceFactor"    # I
    .param p3, "voiceTime"    # I
    .param p4, "videoFactor"    # I
    .param p5, "videoTime"    # I

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSSACInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] : Voice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") Video("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SsacManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 80
    if-eq p4, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {v0, p1, p4, p5}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->updateSSACInfo(III)V

    .line 82
    const-string v0, "Update Video SSAC Info."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    const-string v0, "Voice factor 100 is unavailable value."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 90
    .local v0, "reg":Lcom/sec/ims/ImsRegistration;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->updateSSACInfo(III)V

    .line 91
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {v2, p1, p4, p5}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->updateSSACInfo(III)V

    .line 93
    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 96
    const-string/jumbo v3, "set regiMgr.setSSACPolicy as false."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    aput-boolean v2, v1, p1

    .line 98
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setSSACPolicy(IZ)V

    .line 99
    return-void

    .line 102
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 103
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 106
    :cond_3
    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_5

    .line 107
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->isAlwaysBarred(I)Z

    move-result v4

    .line 108
    .local v4, "isAlwaysBarredNow":Z
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    aget-boolean v6, v5, p1

    if-eq v6, v4, :cond_5

    .line 109
    aput-boolean v4, v5, p1

    .line 110
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v5, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getTelephonyCallStatus(I)I

    move-result v5

    if-nez v5, :cond_4

    .line 111
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->reRegisterBySSAC(I)V

    goto :goto_0

    .line 113
    :cond_4
    const-string v5, "A call is exist now. update Regi after this call terminated."

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->needReRegiAfterCall:[Z

    aput-boolean v2, v1, p1

    .line 118
    .end local v4    # "isAlwaysBarredNow":Z
    :cond_5
    :goto_0
    return-void
.end method
