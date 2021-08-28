.class public Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;
.super Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;
.source "ImsServiceSwitchEur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceSwitchEur"


# instance fields
.field private mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

.field private mEmergencyEnabled:Z

.field private mUpsmEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;-><init>(Landroid/content/Context;I)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mUpsmEnabled:Z

    .line 47
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmergencyEnabled:Z

    .line 93
    new-instance v1, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;-><init>(Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;)V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->registerDefaultSmsPackageChangeReceiver()V

    .line 53
    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    const-string v3, "imsswitch"

    invoke-static {v1, v2, v3, v0, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 55
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "defaultsms"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSms:Z

    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSms:Z

    .line 57
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSms:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    nop

    .line 63
    :goto_1
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->setEmEventReceiver()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    .line 43
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->onEmergencyModeChanged()V

    return-void
.end method

.method private applyTabletPolicy(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;
    .locals 6
    .param p1, "defaultSwitchElement"    # Lcom/google/gson/JsonElement;
    .param p2, "matchedSwitchElement"    # Lcom/google/gson/JsonElement;

    .line 539
    invoke-static {p2}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    const-string v1, "ImsServiceSwitchEur"

    if-nez v0, :cond_0

    .line 540
    const-string v0, "Not a valid matchedSwitchElement."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return-object p2

    .line 543
    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v2, "mnoname"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "mnoName":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 545
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    const/16 v3, 0x13

    new-array v3, v3, [Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/sec/internal/constants/Mno;->VODAFONE_INDIA:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/sec/internal/constants/Mno;->AIRTEL:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/sec/internal/constants/Mno;->IDEA_INDIA:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/sec/internal/constants/Mno;->OPTUS:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Lcom/sec/internal/constants/Mno;->TWO_DEGREE:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    sget-object v5, Lcom/sec/internal/constants/Mno;->VODAFONE_NEWZEALAND:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/16 v4, 0x9

    sget-object v5, Lcom/sec/internal/constants/Mno;->SPARK:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/16 v4, 0xa

    sget-object v5, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/16 v4, 0xb

    sget-object v5, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/16 v4, 0xc

    sget-object v5, Lcom/sec/internal/constants/Mno;->TSTAR:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/16 v4, 0xd

    sget-object v5, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/16 v4, 0xe

    sget-object v5, Lcom/sec/internal/constants/Mno;->TWM:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/16 v4, 0xf

    sget-object v5, Lcom/sec/internal/constants/Mno;->DLOG:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/16 v4, 0x10

    sget-object v5, Lcom/sec/internal/constants/Mno;->MOBITEL_LK:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/16 v4, 0x11

    sget-object v5, Lcom/sec/internal/constants/Mno;->OOREDOO_MV:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/16 v4, 0x12

    sget-object v5, Lcom/sec/internal/constants/Mno;->ROBI:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 552
    const-string/jumbo v3, "support ImsService in Tablet"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-object p2

    .line 557
    :cond_1
    invoke-static {p2, p1}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p2

    .line 558
    return-object p2
.end method

.method private forceNotifyToApp(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->makeImsService(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 206
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->forceNotifyToApp(I)V

    .line 209
    :cond_0
    return-void
.end method

.method private onEmergencyModeChanged()V
    .locals 6

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsServiceSwitchEur["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "onEmergencyModeChanged."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 158
    .local v0, "emergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Emergency is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPSM is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/helper/os/SystemUtil;->checkUltraPowerSavingMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const/16 v3, 0x10

    .line 162
    invoke-virtual {v0, v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmergencyEnabled:Z

    if-eqz v3, :cond_0

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Emergency mode is already enabled, so skip."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 166
    :cond_0
    iput-boolean v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmergencyEnabled:Z

    .line 167
    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mRcsEnabled:Z

    if-eqz v3, :cond_1

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Emergency mode is enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->persist()V

    goto/16 :goto_0

    .line 171
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Emergency mode is enabled: rcs off, so no change."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 175
    invoke-static {v0}, Lcom/sec/internal/helper/os/SystemUtil;->checkUltraPowerSavingMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 176
    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mUpsmEnabled:Z

    if-eqz v3, :cond_3

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPSM is already enabled, so skip."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 179
    :cond_3
    iput-boolean v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mUpsmEnabled:Z

    .line 180
    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mRcsEnabled:Z

    if-eqz v3, :cond_4

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPSM is enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->persist()V

    goto :goto_0

    .line 184
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPSM is enabled: rcs off, so no change."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_5
    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmergencyEnabled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Emergency mode is disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-boolean v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmergencyEnabled:Z

    .line 190
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->persist()V

    .line 191
    iget-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mRcsEnabled:Z

    if-eqz v1, :cond_7

    .line 192
    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->forceNotifyToApp(I)V

    goto :goto_0

    .line 194
    :cond_6
    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mUpsmEnabled:Z

    if-eqz v3, :cond_7

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPSM is disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput-boolean v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mUpsmEnabled:Z

    .line 197
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->persist()V

    .line 198
    iget-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mRcsEnabled:Z

    if-eqz v1, :cond_7

    .line 199
    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->forceNotifyToApp(I)V

    .line 202
    :cond_7
    :goto_0
    return-void
.end method

.method private registerEmEventReceiver()V
    .locals 3

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsServiceSwitchEur["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "registerEmEventReceiver. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;-><init>(Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    .line 240
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .local v0, "emIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    sget-object v1, Lcom/sec/ims/extensions/SemEmergencyConstantsExt;->EMERGENCY_CHECK_ABNORMAL_STATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    return-void
.end method

.method private setEmEventReceiver()V
    .locals 4

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsServiceSwitchEur["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "setEmEventReceiver. "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mEmEventReceiver is not null. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->registerEmEventReceiver()V

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 145
    .local v0, "emergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    invoke-static {v0}, Lcom/sec/internal/helper/os/SystemUtil;->checkUltraPowerSavingMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x10

    .line 147
    invoke-virtual {v0, v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "emergency mode is already set, so send upsm event."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->onEmergencyModeChanged()V

    .line 152
    :cond_2
    return-void
.end method

.method private unregisterEmEventReceiver()V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsServiceSwitchEur["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mEmEventReceiver is null. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void

    .line 269
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    nop

    :goto_0
    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    .line 274
    goto :goto_1

    .line 273
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v2, "ImsServiceSwitchEur"

    const-string v3, "EmEventReceiver is not registered!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    nop

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 275
    :goto_1
    return-void

    .line 273
    :goto_2
    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    .line 274
    throw v1
.end method

.method private unregisterEventListener()V
    .locals 3

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsServiceSwitchEur["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unregisterEventListener. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ImsServiceSwitchEur"

    const-string v2, "DefaultSmsPackageChangeReceiver is not registered!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method


# virtual methods
.method protected initServiceSwitch(Ljava/lang/String;Ljava/util/List;ZZLjava/lang/String;)V
    .locals 9
    .param p1, "operator"    # Ljava/lang/String;
    .param p3, "isLabSimCard"    # Z
    .param p4, "isSimLoaded"    # Z
    .param p5, "mnoname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 298
    .local p2, "netowrkNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 299
    .local v0, "cscVolteEnabled":Z
    const/4 v1, 0x1

    .line 302
    .local v1, "cscLteVideoCallEnabled":Z
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 304
    .local v2, "cscRcsEnabled":Z
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 306
    .local v4, "imsswitch":Landroid/content/ContentValues;
    invoke-static {}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->getImsServiceSwitchTable()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 307
    .local v6, "service":Ljava/lang/String;
    const-string v7, "enableServiceRcs"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "enableServiceRcschat"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 310
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 308
    :cond_1
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 312
    .end local v6    # "service":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 314
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 315
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    const-string v5, "GCF"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez p3, :cond_4

    if-eqz p4, :cond_4

    .line 318
    const-string v3, "45001"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 320
    const-string v3, ""

    invoke-virtual {p0, p5, v3}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->loadImsSwitchFromJson(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 322
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 323
    :cond_3
    const/4 v1, 0x0

    .line 324
    const/4 v0, 0x0

    .line 325
    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v5, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init: No ImsSettings in Json for ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]. Switch off."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 327
    const/4 v2, 0x0

    .line 328
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mRcsEnabled:Z

    .line 332
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->saveImsSwitch(Landroid/content/ContentValues;)V

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImsServiceSwitchEur["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init: cscVolteEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "operator: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->initVolteServiceSwitch(ZZZ)V

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init: rcse="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->initRcsServiceSwitch(Z)V

    .line 340
    const v3, 0x1003000f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",INIT SW:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v6, "1_"

    const-string v7, "0_"

    if-eqz v0, :cond_5

    move-object v8, v6

    goto :goto_3

    :cond_5
    move-object v8, v7

    :goto_3
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    move-object v8, v6

    goto :goto_4

    :cond_6
    move-object v8, v7

    :goto_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    move-object v6, v7

    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 340
    invoke-static {v3, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 343
    return-void
.end method

.method protected initVolteServiceSwitch(ZZZ)V
    .locals 3
    .param p1, "cscVolteEnabled"    # Z
    .param p2, "cscLteVideoCallEnabled"    # Z
    .param p3, "cscRcsEnabled"    # Z

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mmtel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mmtel-video"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "smsip"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "ss"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "cdpn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iput-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mVoLteEnabled:Z

    .line 288
    iput-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mSsEnabled:Z

    goto :goto_0

    .line 290
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mVoLteEnabled:Z

    .line 291
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mSsEnabled:Z

    .line 293
    :goto_0
    return-void
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "service"    # Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 224
    const-string/jumbo v0, "ss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mSsEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mVoLteEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 227
    :cond_2
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mVoLteEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mRcsServiceSwitch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 231
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->isRcsEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mRcsServiceSwitch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1

    .line 233
    :cond_6
    return v2
.end method

.method public isRcsEnabled()Z
    .locals 6

    .line 119
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->isLoded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->getDefaultMessageApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->isDefaultMessageAppInUse()Z

    move-result v0

    .line 121
    .local v0, "isSmsDefault":Z
    iget v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    const-string v4, "imsswitch"

    invoke-static {v2, v3, v4, v1, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 123
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 124
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSms:Z

    .line 125
    iget-boolean v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSms:Z

    const-string v5, "defaultsms"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    iput-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->isLoded:Z

    .line 130
    .end local v0    # "isSmsDefault":Z
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsServiceSwitchEur["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isRcsEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mRcsEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mDefaultSms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSms:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mUpsmEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mUpsmEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mEmergencyEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmergencyEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mRcsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mUpsmEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSms:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmergencyEnabled:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected load()V
    .locals 9

    .line 347
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    const-string v2, "imsswitch"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 349
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "volteServices":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "rcsServices":[Ljava/lang/String;
    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    .line 352
    .local v6, "service":Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .end local v6    # "service":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 354
    :cond_0
    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 355
    .restart local v6    # "service":Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mRcsServiceSwitch:Ljava/util/Map;

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .end local v6    # "service":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 358
    :cond_1
    const-string/jumbo v4, "volte"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mVoLteEnabled:Z

    .line 359
    const-string/jumbo v4, "ss"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mSsEnabled:Z

    .line 361
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 362
    iput-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mRcsEnabled:Z

    goto :goto_2

    .line 364
    :cond_2
    const-string/jumbo v4, "rcs"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mRcsEnabled:Z

    .line 367
    :goto_2
    const-string v3, "chatbot-communication"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load: new switch chatbot-communication being set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mRcsEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImsServiceSwitchEur"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mRcsServiceSwitch:Ljava/util/Map;

    iget-boolean v5, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mRcsEnabled:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->persist()V

    .line 374
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->dumpServiceSwitch()V

    .line 375
    const v3, 0x10030010

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",LOAD:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->getSwitchDump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 376
    return-void
.end method

.method protected loadImsSwitchFromJson(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 11
    .param p1, "mnoname"    # Ljava/lang/String;
    .param p2, "mvnoname"    # Ljava/lang/String;

    .line 478
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadImsSwitchFromJson: mnoname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",  mvnoname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsServiceSwitchEur"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 480
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 481
    .local v0, "imsSwitch":Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    const-string v3, "load: loadImsSwitchFromJson is not identified."

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 483
    return-object v0

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-static {v1, p1, v3}, Lcom/sec/internal/ims/settings/ImsServiceSwitchLoader;->getImsSwitchFromJson(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 488
    .local v1, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 489
    return-object v0

    .line 492
    :cond_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 494
    .local v3, "object":Lcom/google/gson/JsonObject;
    const-string v4, "defaultswitch"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 495
    .local v4, "defaultElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 496
    iget v5, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    const-string v6, "load: No default setting."

    invoke-static {v2, v5, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 497
    return-object v0

    .line 501
    :cond_2
    iget v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-static {v3, p1, p2, v2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchLoader;->getMatchedJsonElement(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 503
    .local v2, "matchElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 504
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 505
    .local v5, "matchObj":Lcom/google/gson/JsonObject;
    const-string v6, "mnoname"

    invoke-virtual {v5, v6, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    move-object v2, v5

    .line 510
    .end local v5    # "matchObj":Lcom/google/gson/JsonObject;
    :cond_3
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    .line 511
    const-string/jumbo v6, "ro.product.first_api_level"

    invoke-static {v6, v5}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x1e

    if-ge v5, v6, :cond_4

    .line 512
    invoke-direct {p0, v4, v2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->applyTabletPolicy(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 515
    :cond_4
    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    if-eqz v5, :cond_5

    .line 516
    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getUpdatedImsSwitch(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 520
    :cond_5
    invoke-static {v4, v2}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 521
    invoke-static {v2}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 522
    return-object v0

    .line 524
    :cond_6
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 526
    .local v5, "matchObject":Lcom/google/gson/JsonObject;
    invoke-virtual {v5}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 527
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 528
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonElement;

    .line 529
    .local v9, "value":Lcom/google/gson/JsonElement;
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Lcom/google/gson/JsonElement;
    goto :goto_0

    .line 531
    :cond_7
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 532
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->updateRcsSwitchForEur(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 535
    :cond_8
    return-object v0
.end method

.method public migrationSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 9
    .param p1, "newSp"    # Landroid/content/SharedPreferences;

    .line 68
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    const-string v3, "imsswitch"

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    .local v1, "oldSp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 73
    .local v2, "old":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 74
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 75
    .local v5, "obj":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 76
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v7, v5

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 77
    :cond_0
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 78
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v7, v5

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 80
    :cond_1
    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 82
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v5    # "obj":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 83
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    return-void
.end method

.method public registerDefaultSmsPackageChangeReceiver()V
    .locals 3

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    return-void
.end method

.method public unregisterObserver()V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->unregisterEventListener()V

    .line 251
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->unregisterEmEventReceiver()V

    .line 252
    return-void
.end method

.method protected updateRcsSwitchForEur(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 14
    .param p1, "imsSwitch"    # Landroid/content/ContentValues;

    .line 436
    const-string v0, "enableServiceRcs"

    .line 437
    .local v0, "fieldRcs":Ljava/lang/String;
    const-string v1, "enableServiceRcschat"

    .line 439
    .local v1, "fieldChat":Ljava/lang/String;
    const/4 v2, 0x0

    .line 440
    .local v2, "isEnableRcs":Z
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, "salesCode":Ljava/lang/String;
    iget v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "nwCode":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-static {v5, v6}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v5

    const/4 v6, 0x0

    .line 456
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 442
    new-array v8, v6, [Ljava/lang/String;

    const-string/jumbo v9, "rcs_carrier_list"

    invoke-virtual {v5, v9, v8}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 445
    .local v5, "carrier_list":[Ljava/lang/String;
    iget v8, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    iget-object v9, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    const-string v10, "imsswitch"

    invoke-static {v8, v9, v10, v6, v6}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 447
    .local v8, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 449
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    iget v10, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "salesCode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " nwCode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ImsServiceSwitchEur"

    invoke-static {v12, v10, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 451
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 452
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 453
    iget v10, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    const-string v11, "not support sim mobility"

    invoke-static {v12, v10, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 454
    invoke-interface {v9, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 455
    invoke-interface {v9, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 456
    invoke-virtual {p1, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 457
    invoke-virtual {p1, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 459
    :cond_0
    invoke-static {p1, v0, v6}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v7

    .line 460
    .local v7, "imsSwitchFromJson":Z
    iget-object v10, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-static {v10, v11}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "rcs_open_switch_for_eur"

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v13}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v7, :cond_1

    move v6, v13

    :cond_1
    move v2, v6

    .line 463
    iget v6, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "imsSwitchFromJson ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "], RCS_OPEN_SWITCH_FOR_EUR ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v6, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 464
    invoke-interface {v9, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 466
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 467
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 470
    .end local v7    # "imsSwitchFromJson":Z
    :cond_2
    :goto_0
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 472
    return-object p1
.end method

.method protected updateServiceSwitchInternal(Landroid/content/ContentValues;)V
    .locals 20
    .param p1, "mnoinfo"    # Landroid/content/ContentValues;

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "enableIms"

    .line 382
    .local v2, "fieldIms":Ljava/lang/String;
    const-string v3, "enableServiceRcs"

    .line 383
    .local v3, "fieldRcs":Ljava/lang/String;
    const-string v4, "enableServiceRcschat"

    .line 384
    .local v4, "fieldChat":Ljava/lang/String;
    const-string v5, "enableServiceVolte"

    .line 385
    .local v5, "fieldVolte":Ljava/lang/String;
    const-string v6, "enableServiceVowifi"

    .line 386
    .local v6, "fieldVowifi":Ljava/lang/String;
    const-string v7, "enableServiceSmsip"

    .line 388
    .local v7, "fieldSmsip":Ljava/lang/String;
    const-string v8, "globalgcenabled"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v8

    .line 389
    .local v8, "isGlobalGcEnabled":Z
    const/4 v10, 0x1

    .line 391
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 389
    if-eqz v8, :cond_0

    .line 390
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 391
    .local v12, "gcSettings":Landroid/content/ContentValues;
    const-string v13, "enableIms"

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 392
    const-string v13, "enableServiceRcs"

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 393
    const-string v13, "enableServiceRcschat"

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 394
    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 397
    .end local v12    # "gcSettings":Landroid/content/ContentValues;
    :cond_0
    invoke-static {v1, v2, v9}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v12

    .line 398
    .local v12, "isEnableIms":Z
    invoke-static {v1, v3, v9}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v13

    .line 399
    .local v13, "isEnableRcs":Z
    if-eqz v12, :cond_1

    if-eqz v13, :cond_1

    invoke-static {v1, v4, v9}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_1

    move v14, v10

    goto :goto_0

    :cond_1
    move v14, v9

    .line 400
    .local v14, "isEnableRcsChat":Z
    :goto_0
    if-eqz v12, :cond_2

    invoke-static {v1, v5, v9}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_2

    move v15, v10

    goto :goto_1

    :cond_2
    move v15, v9

    .line 401
    .local v15, "isEnableVolte":Z
    :goto_1
    if-eqz v12, :cond_3

    invoke-static {v1, v6, v9}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v16

    if-eqz v16, :cond_3

    move/from16 v16, v10

    goto :goto_2

    :cond_3
    move/from16 v16, v9

    :goto_2
    move/from16 v17, v16

    .line 402
    .local v17, "isEnableVowifi":Z
    if-eqz v12, :cond_4

    invoke-static {v1, v7, v9}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v16

    if-eqz v16, :cond_4

    move/from16 v16, v10

    goto :goto_3

    :cond_4
    move/from16 v16, v9

    :goto_3
    move/from16 v18, v16

    .line 407
    .local v18, "isEnableSmsip":Z
    if-eqz v12, :cond_7

    .line 409
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->parseImsSwitch(Landroid/content/ContentValues;)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->enableCpdnForJansky()V

    .line 412
    if-nez v15, :cond_5

    move/from16 v9, v17

    .end local v17    # "isEnableVowifi":Z
    .local v9, "isEnableVowifi":Z
    if-eqz v9, :cond_6

    goto :goto_4

    .end local v9    # "isEnableVowifi":Z
    .restart local v17    # "isEnableVowifi":Z
    :cond_5
    move/from16 v9, v17

    .line 413
    .end local v17    # "isEnableVowifi":Z
    .restart local v9    # "isEnableVowifi":Z
    :goto_4
    iget-object v10, v0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mServiceMap:Ljava/util/Map;

    const-string v1, "mmtel"

    invoke-interface {v10, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v1, v0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mServiceMap:Ljava/util/Map;

    const-string/jumbo v10, "ss"

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_6
    iget v1, v0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateServiceSwitch: isEnableRcs : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ImsServiceSwitchEur"

    invoke-static {v11, v1, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 419
    if-eqz v13, :cond_8

    .line 421
    invoke-virtual {v0, v14}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->enableRcsSwitch(Z)V

    goto :goto_5

    .line 407
    .end local v9    # "isEnableVowifi":Z
    .restart local v17    # "isEnableVowifi":Z
    :cond_7
    move/from16 v9, v17

    .line 425
    .end local v17    # "isEnableVowifi":Z
    .restart local v9    # "isEnableVowifi":Z
    :cond_8
    :goto_5
    iget-object v1, v0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v10, v0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v2

    .end local v2    # "fieldIms":Ljava/lang/String;
    .local v19, "fieldIms":Ljava/lang/String;
    const-string/jumbo v2, "updateServiceSwitch: Ims["

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] Rcs["

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] RcsChat["

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] Volte["

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] Vowifi["

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] Smsip["

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v18

    .end local v18    # "isEnableSmsip":Z
    .local v2, "isEnableSmsip":Z
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v18, v3

    .end local v3    # "fieldRcs":Ljava/lang/String;
    .local v18, "fieldRcs":Ljava/lang/String;
    const-string v3, "] "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 430
    if-nez v15, :cond_a

    if-nez v9, :cond_a

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v1, 0x1

    :goto_7
    iput-boolean v1, v0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mVoLteEnabled:Z

    .line 431
    iput-boolean v13, v0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mRcsEnabled:Z

    .line 432
    return-void
.end method
