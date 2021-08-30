.class public Lcom/sec/internal/ims/config/ConfigComplete;
.super Ljava/lang/Object;
.source "ConfigComplete.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

.field private final mContext:Landroid/content/Context;

.field private final mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/sec/internal/ims/config/ConfigComplete;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/ConfigComplete;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p3, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .param p4, "eventLog"    # Lcom/sec/internal/helper/SimpleEventLog;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 59
    iput-object p3, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 60
    iput-object p4, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 61
    return-void
.end method

.method private handleAutoconfigurationActiveVersion(Lcom/sec/internal/ims/config/params/ACSConfig;Lcom/sec/internal/constants/Mno;I)V
    .locals 5
    .param p1, "config"    # Lcom/sec/internal/ims/config/params/ACSConfig;
    .param p2, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p3, "phoneId"    # I

    .line 200
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/params/ACSConfig;->getAcsVersion()I

    move-result v0

    .line 201
    .local v0, "oldVersion":I
    const/4 v1, 0x1

    const/4 v2, -0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne p2, v2, :cond_3

    .line 212
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 213
    .local v2, "RcsUserSetting":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 217
    sget-object v3, Lcom/sec/internal/ims/config/ConfigComplete;->LOG_TAG:Ljava/lang/String;

    const-string v4, "disable RCS failed modify rcs_user_setting to RCS_ENABLED for SKT"

    invoke-static {v3, p3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, p3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    goto :goto_1

    .line 204
    .end local v2    # "RcsUserSetting":I
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/params/ACSConfig;->isTriggeredByNrcr()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v2, v3, v4, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    .line 210
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, p3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 221
    :cond_3
    :goto_1
    return-void
.end method

.method private handleAutoconfigurationVersion(Lcom/sec/internal/interfaces/ims/config/IWorkflow;Lcom/sec/internal/ims/config/params/ACSConfig;Lcom/sec/internal/constants/Mno;II)V
    .locals 5
    .param p1, "workflow"    # Lcom/sec/internal/interfaces/ims/config/IWorkflow;
    .param p2, "config"    # Lcom/sec/internal/ims/config/params/ACSConfig;
    .param p3, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p4, "errorCode"    # I
    .param p5, "phoneId"    # I

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p5}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v0

    .line 162
    .local v0, "version":Ljava/lang/Integer;
    sget-object v1, Lcom/sec/internal/ims/config/ConfigComplete;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autoconfiguration Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p5, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    if-nez v0, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "Since the version is 0, RCS services are filtered"

    invoke-virtual {v1, p5, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 168
    const v1, 0x13000002

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",VER:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",EC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 169
    const/16 v1, 0x3db

    if-eq p4, v1, :cond_8

    .line 171
    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->disableRcsByAcs(Z)V

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eq v1, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_2

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x3

    if-ne v1, v3, :cond_3

    .line 192
    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->setRcsDormantMode(Z)V

    goto :goto_1

    .line 193
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v2, :cond_8

    .line 194
    invoke-direct {p0, p2, p3, p5}, Lcom/sec/internal/ims/config/ConfigComplete;->handleAutoconfigurationActiveVersion(Lcom/sec/internal/ims/config/params/ACSConfig;Lcom/sec/internal/constants/Mno;I)V

    goto :goto_1

    .line 174
    :cond_4
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/config/ConfigComplete;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RCS services are disabled"

    invoke-static {v1, p5, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne p3, v1, :cond_5

    .line 176
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearToken()V

    .line 177
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->removeValidToken()V

    .line 178
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v1

    .line 179
    .local v1, "imModule":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v1, :cond_5

    .line 180
    sget-object v2, Lcom/sec/internal/ims/config/ConfigComplete;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Try deleteChatsForUnsubscribe for SKT"

    invoke-static {v2, p5, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteChatsForUnsubscribe()Ljava/util/concurrent/FutureTask;

    .line 185
    .end local v1    # "imModule":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    :cond_5
    invoke-virtual {p2}, Lcom/sec/internal/ims/config/params/ACSConfig;->isTriggeredByNrcr()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-eq p3, v1, :cond_6

    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 187
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4, p5}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    .line 190
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, p5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 196
    :cond_8
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsVersion(I)V

    .line 197
    return-void
.end method

.method private releasePermanentBlockforJibe(IILjava/util/List;Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "phoneId"    # I
    .param p4, "version"    # Ljava/lang/Integer;
    .param p5, "rcsAs"    # Ljava/lang/String;
    .param p6, "forbiddenCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 81
    .local p3, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 82
    .local v1, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_0

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_0

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CLARO_ARGENTINA:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_0

    .line 83
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CLARO_PARAGUAY:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_0

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->PERSONAL_ARGENTINA:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_0

    .line 84
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CLARO_DOMINICAN:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_0

    .line 85
    const-string v2, "jibe"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {p2, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->hasChatbotService(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    if-eqz p4, :cond_1

    .line 87
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x2

    if-ge p6, v2, :cond_1

    .line 90
    sget-object v2, Lcom/sec/internal/ims/config/ConfigComplete;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "releasePermanentBlock: register is blocked, release"

    invoke-static {v2, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->releaseThrottleByAcs(I)V

    .line 94
    .end local v1    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_1
    goto :goto_0

    .line 95
    :cond_2
    return-void
.end method

.method private setStateforDualRegistration(IILjava/util/List;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "phoneId"    # I
    .param p4, "version"    # Ljava/lang/Integer;
    .param p5, "rcsAs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 98
    .local p3, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 100
    .local v1, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "jibe"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    const-string v3, "mmtel"

    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 101
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    const-string v3, "mmtel-video"

    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 102
    :cond_1
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v3, :cond_2

    .line 103
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "RegisterTask setState: CONFIGURED"

    invoke-virtual {v2, p2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 104
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    .line 105
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->getAcsVersion()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

    :cond_3
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_4

    if-eqz p4, :cond_4

    .line 108
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_4

    .line 109
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 110
    const-string v2, "autocofig is changed"

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 111
    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 112
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const-string v3, "AUTOCONFIG_CHANGED"

    invoke-interface {v2, v1, v4, v5, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 117
    .end local v1    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_4
    :goto_1
    goto/16 :goto_0

    .line 118
    :cond_5
    return-void
.end method


# virtual methods
.method protected handleAutoconfigurationComplete(ILjava/util/List;ILcom/sec/internal/interfaces/ims/config/IWorkflow;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p3, "errorCode"    # I
    .param p4, "workflow"    # Lcom/sec/internal/interfaces/ims/config/IWorkflow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;I",
            "Lcom/sec/internal/interfaces/ims/config/IWorkflow;",
            ")V"
        }
    .end annotation

    .line 148
    .local p2, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    sget-object v0, Lcom/sec/internal/ims/config/ConfigComplete;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAutoconfigurationComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 149
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 150
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    .line 151
    .local v1, "config":Lcom/sec/internal/ims/config/params/ACSConfig;
    if-eqz p2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_1

    if-eqz p4, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    move-object v2, p0

    move-object v3, p4

    move-object v4, v1

    move-object v5, v0

    move v6, p3

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/config/ConfigComplete;->handleAutoconfigurationVersion(Lcom/sec/internal/interfaces/ims/config/IWorkflow;Lcom/sec/internal/ims/config/params/ACSConfig;Lcom/sec/internal/constants/Mno;II)V

    .line 155
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsCompleteStatus(Z)V

    .line 156
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->setForceAcs(Z)V

    .line 157
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->setIsTriggeredByNrcr(Z)V

    .line 158
    return-void

    .line 152
    :cond_1
    :goto_0
    return-void
.end method

.method protected sendRCSAInfoToHQM(III)Z
    .locals 1
    .param p1, "acsVersion"    # I
    .param p2, "errorCode"    # I
    .param p3, "phoneId"    # I

    const v0, true
    return v0
.end method

.method protected setStateforACSComplete(IILjava/util/List;I)V
    .locals 10
    .param p1, "errorCode"    # I
    .param p2, "phoneId"    # I
    .param p4, "forbiddenCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;I)V"
        }
    .end annotation

    .line 64
    .local p3, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    sget-object v0, Lcom/sec/internal/ims/config/ConfigComplete;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStateforACSComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    if-nez p3, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v0

    .line 69
    .local v0, "version":Ljava/lang/Integer;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object v8, v1

    .line 70
    .local v8, "cv":Landroid/content/ContentValues;
    const-string v1, "RACV"

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    const-string v2, "DRCS"

    invoke-static {p2, v1, v2, v8}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 72
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 74
    .local v9, "rcsAs":Ljava/lang/String;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, v9

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/config/ConfigComplete;->releasePermanentBlockforJibe(IILjava/util/List;Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 75
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyAutoConfigDone(I)V

    .line 76
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyConfigured(ZI)V

    .line 77
    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/ConfigComplete;->setStateforDualRegistration(IILjava/util/List;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 78
    return-void
.end method
