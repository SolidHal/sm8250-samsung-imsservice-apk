.class Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;
.super Ljava/lang/Object;
.source "ImsCallSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsCallSessionBuilder"
.end annotation


# instance fields
.field private mIsEmergency:Z

.field private mMno:Lcom/sec/internal/constants/Mno;

.field private mNeedToSetCallToPending:Z

.field private mPhoneId:I

.field private mProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field private mRegInfo:Lcom/sec/ims/ImsRegistration;

.field private mSubId:I

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;

    .line 163
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)V

    return-void
.end method

.method private checkCanMakeCallSession()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$400(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$500(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 206
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cannot make new call session. currently in Registering"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Registering."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cannot make new call session. not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Not registered."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkExistingCallSessions()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$100(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 217
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 219
    .local v1, "tempCallSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->checkOngoingCallForForkedSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 220
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 221
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 222
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "skip different based regi"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    goto :goto_0

    .line 226
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_2

    .line 227
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isOngoingCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->handleCallSessionDuringCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 230
    .end local v1    # "tempCallSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_2
    goto :goto_0

    .line 231
    :cond_3
    return-void
.end method

.method private checkOngoingCallForForkedSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 3
    .param p1, "tempCallSession"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isCmcPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 236
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 237
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot make a forking session. ongoing call exists on the other sim. callId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 245
    :cond_1
    :goto_0
    return-void
.end method

.method private getNetworkForCreateSession()I
    .locals 6

    .line 248
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mIsEmergency:Z

    const/16 v1, 0xb

    if-eqz v0, :cond_2

    .line 253
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mPhoneId:I

    const/4 v2, 0x0

    const-string v3, "e911_pdn_selection_vowifi"

    invoke-static {v0, v3, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v0

    .line 255
    .local v0, "emergencyPdnPolicy":I
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSession: voiceNetwork = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$600(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v4

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mSubId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 257
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$500(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mPhoneId:I

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VoWIFI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "createSession: use IMS PDN for WiFi e911 for e911pdnpolicy(IMSPDN_IF_IPC_RAT_EPDG)."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return v1

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$600(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mSubId:I

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 261
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$600(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mSubId:I

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 262
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$600(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mSubId:I

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 263
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 264
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "createSession: use IMS PDN for KOR 3g psvt e911."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return v1

    .line 267
    :cond_1
    const/16 v1, 0xf

    return v1

    .line 270
    .end local v0    # "emergencyPdnPolicy":I
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_3

    .line 271
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    return v0

    .line 272
    :cond_3
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mNeedToSetCallToPending:Z

    if-eqz v0, :cond_4

    .line 273
    return v1

    .line 277
    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method private handleCallSessionDuringCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 3
    .param p1, "tempCallSession"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mIsEmergency:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 283
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "release active call before E911 dialing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v1, :cond_0

    .line 285
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    goto :goto_0

    .line 287
    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "createSession: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$700(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 293
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Operator allow USSD during call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isCmcPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "allow CMC 2ndCall in PD"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_1
    return-void

    .line 298
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot make new call session. another call already exist callId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method private parseArguments()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mPhoneId:I

    .line 309
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez v1, :cond_0

    .line 310
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    .line 315
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mSubId:I

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mIsEmergency:Z

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mNeedToSetCallToPending:Z

    .line 318
    return-void
.end method

.method private processImpuAndCmc()V
    .locals 5

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$400(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getActiveImpu()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 322
    .local v0, "activeImpu":Lcom/sec/ims/util/ImsUri;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getLineMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 323
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSession: originating from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-static {v0}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setLineMsisdn(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-lez v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$400(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->checkCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 331
    :cond_1
    return-void
.end method

.method private processNeedToSetCallToPending()V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mIsEmergency:Z

    if-nez v0, :cond_0

    .line 335
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createSession: Cdmaless needToPendingCall"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mNeedToSetCallToPending:Z

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isForceCSFB()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 340
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "set needToPendingCall to true when SD or VoLTE is not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mNeedToSetCallToPending:Z

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 344
    :cond_2
    :goto_0
    return-void
.end method

.method private processNetworkType()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->getNetworkForCreateSession()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setNetworkType(I)V

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mIsEmergency:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 350
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Need to pending E911 call over VoWifi using IMS PDN."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mNeedToSetCallToPending:Z

    .line 354
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mNeedToSetCallToPending:Z

    if-nez v0, :cond_3

    .line 355
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mIsEmergency:Z

    if-nez v0, :cond_1

    .line 356
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->checkCanMakeCallSession()V

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 360
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cannot make new call session. not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Not registered."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_3
    :goto_0
    return-void
.end method

.method private setPendingOutgoingCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 2
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 367
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "try to regi for pending outgoing call session"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setPendingCall(Z)V

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$802(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 370
    return-void
.end method


# virtual methods
.method public createSession(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 4
    .param p1, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .param p2, "regInfo"    # Lcom/sec/ims/ImsRegistration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    if-eqz p1, :cond_2

    .line 178
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 179
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 180
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->parseArguments()V

    .line 181
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->processNeedToSetCallToPending()V

    .line 182
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->processNetworkType()V

    .line 183
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->checkExistingCallSessions()V

    .line 184
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->processImpuAndCmc()V

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$200(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mNeedToSetCallToPending:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->create(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Z)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 187
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_1

    .line 192
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mNeedToSetCallToPending:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isForceCSFB()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->setPendingOutgoingCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$300(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 196
    return-object v0

    .line 188
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "createSession: session create fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    .line 174
    .end local v0    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "profile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Null CallProfile."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
