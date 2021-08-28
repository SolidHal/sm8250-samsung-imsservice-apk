.class public Lcom/sec/internal/helper/ImsSharedPrefHelper;
.super Ljava/lang/Object;
.source "ImsSharedPrefHelper.java"


# static fields
.field public static final CARRIER_ID:Ljava/lang/String; = "carrierId"

.field public static final CSC_INFO_PREF:Ljava/lang/String; = "CSC_INFO_PREF"

.field public static final DEBUG_CONFIG:Ljava/lang/String; = "Debug_config"

.field public static final DRPT:Ljava/lang/String; = "DRPT"

.field public static final GLOBAL_GC_SETTINGS:Ljava/lang/String; = "globalgcsettings"

.field public static final GLOBAL_SETTINGS:Ljava/lang/String; = "globalsettings"

.field public static final IMS_CONFIG:Ljava/lang/String; = "imsconfig"

.field public static final IMS_FEATURE:Ljava/lang/String; = "imsfeature"

.field public static final IMS_PROFILE:Ljava/lang/String; = "imsprofile"

.field public static final IMS_SWITCH:Ljava/lang/String; = "imsswitch"

.field public static final IMS_USER_DATA:Ljava/lang/String; = "ims_user_data"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PREF:Ljava/lang/String; = "pref"

.field public static final PRE_COMMON_HEADER:Ljava/lang/String; = "previous_common_header"

.field public static final PROFILE:Ljava/lang/String; = "profile"

.field public static final SAVED_IMPU:Ljava/lang/String; = "saved_impu"

.field public static final USER_CONFIG:Ljava/lang/String; = "user_config"

.field public static final VALID_RCS_CONFIG:Ljava/lang/String; = "validrcsconfig"

.field private static mCeUnlocked:Z

.field private static final migrationListForCe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final saveWithPhoneIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 19
    const-class v0, Lcom/sec/internal/helper/ImsSharedPrefHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/ImsSharedPrefHelper;->LOG_TAG:Ljava/lang/String;

    .line 39
    const-string v0, "ims_user_data"

    const-string/jumbo v1, "profile"

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "saved_impu"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/ImsSharedPrefHelper;->migrationListForCe:Ljava/util/List;

    .line 46
    const-string/jumbo v1, "user_config"

    const-string v2, "ims_user_data"

    const-string v3, "CSC_INFO_PREF"

    const-string v4, "globalsettings"

    const-string v5, "imsfeature"

    const-string v6, "imsprofile"

    const-string v7, "imsswitch"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/ImsSharedPrefHelper;->saveWithPhoneIdList:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/internal/helper/ImsSharedPrefHelper;->mCeUnlocked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;

    .line 129
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$jzZQp_dmoLTzDfTUq6iLcvCJCNA;->INSTANCE:Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$jzZQp_dmoLTzDfTUq6iLcvCJCNA;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 130
    return-void
.end method

.method public static getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Z

    .line 113
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$U9lJ4c2hpzqDra0ao_uS_cv_59Y;

    invoke-direct {v1, p3, p4}, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$U9lJ4c2hpzqDra0ao_uS_cv_59Y;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getInt(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .line 117
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$4NBOqjn-OKiMO_0EiCwJQ8rjVdM;

    invoke-direct {v1, p3, p4}, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$4NBOqjn-OKiMO_0EiCwJQ8rjVdM;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getLong(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultValue"    # J

    .line 121
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$QeefqBegkXkFyZZgVXsqQ_tjFUA;

    invoke-direct {v1, p3, p4, p5}, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$QeefqBegkXkFyZZgVXsqQ_tjFUA;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "storeCe"    # Z

    .line 59
    if-eqz p1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    const-string v0, "_"

    if-nez p4, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->isCeUnlocked()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    sget-object v1, Lcom/sec/internal/helper/ImsSharedPrefHelper;->migrationListForCe:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    sget-object v1, Lcom/sec/internal/helper/ImsSharedPrefHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSharedPref from CE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 66
    .local v1, "ceContext":Landroid/content/Context;
    if-gez p0, :cond_2

    .line 67
    invoke-virtual {v1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 69
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 73
    .end local v1    # "ceContext":Landroid/content/Context;
    :cond_3
    if-gez p0, :cond_4

    .line 74
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 76
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 60
    :cond_5
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .line 105
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$iPVuS5spZlWQEV2rI4f5MTCMjCc;

    invoke-direct {v1, p3, p4}, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$iPVuS5spZlWQEV2rI4f5MTCMjCc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getStringArray(ILandroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Landroid/util/ArrayMap;

    array-length v1, p3

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 134
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$sQ27_0EG0OxVhQKwFYSszsYNvs4;

    invoke-direct {v2, p3, v0}, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$sQ27_0EG0OxVhQKwFYSszsYNvs4;-><init>([Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 139
    return-object v0
.end method

.method public static getStringSet(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    .local p4, "defaultValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$XbDHVR83ETS8-IvioRf8l_H0CHc;

    invoke-direct {v1, p3, p4}, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$XbDHVR83ETS8-IvioRf8l_H0CHc;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static declared-synchronized isCeUnlocked()Z
    .locals 2

    const-class v0, Lcom/sec/internal/helper/ImsSharedPrefHelper;

    monitor-enter v0

    .line 154
    :try_start_0
    sget-boolean v1, Lcom/sec/internal/helper/ImsSharedPrefHelper;->mCeUnlocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic lambda$clear$11(Landroid/content/SharedPreferences;)V
    .locals 1
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .line 129
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic lambda$getBoolean$7(Ljava/lang/String;ZLandroid/content/SharedPreferences;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z
    .param p2, "pref"    # Landroid/content/SharedPreferences;

    .line 113
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getInt$8(Ljava/lang/String;ILandroid/content/SharedPreferences;)Ljava/lang/Integer;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I
    .param p2, "pref"    # Landroid/content/SharedPreferences;

    .line 117
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getLong$9(Ljava/lang/String;JLandroid/content/SharedPreferences;)Ljava/lang/Long;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J
    .param p3, "pref"    # Landroid/content/SharedPreferences;

    .line 121
    invoke-interface {p3, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getString$5(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;
    .param p2, "pref"    # Landroid/content/SharedPreferences;

    .line 105
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getStringArray$12([Ljava/lang/String;Ljava/util/Map;Landroid/content/SharedPreferences;)V
    .locals 4
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "values"    # Ljava/util/Map;
    .param p2, "pref"    # Landroid/content/SharedPreferences;

    .line 135
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 136
    .local v2, "key":Ljava/lang/String;
    const-string v3, ""

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v2    # "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method static synthetic lambda$getStringSet$6(Ljava/lang/String;Ljava/util/Set;Landroid/content/SharedPreferences;)Ljava/util/Set;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/util/Set;
    .param p2, "pref"    # Landroid/content/SharedPreferences;

    .line 109
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$put$13(Landroid/content/ContentValues;Landroid/content/SharedPreferences;)V
    .locals 5
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .line 144
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 146
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    return-void
.end method

.method static synthetic lambda$remove$10(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .line 125
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic lambda$save$0(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "pref"    # Landroid/content/SharedPreferences;

    .line 85
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic lambda$save$1(Ljava/lang/String;ZLandroid/content/SharedPreferences;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z
    .param p2, "pref"    # Landroid/content/SharedPreferences;

    .line 89
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic lambda$save$2(Ljava/lang/String;ILandroid/content/SharedPreferences;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "pref"    # Landroid/content/SharedPreferences;

    .line 93
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic lambda$save$3(Ljava/lang/String;JLandroid/content/SharedPreferences;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J
    .param p3, "pref"    # Landroid/content/SharedPreferences;

    .line 97
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic lambda$save$4(Ljava/lang/String;Ljava/util/Set;Landroid/content/SharedPreferences;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/util/Set;
    .param p2, "pref"    # Landroid/content/SharedPreferences;

    .line 101
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static migrateToCeStorage(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 162
    sget-object v0, Lcom/sec/internal/helper/ImsSharedPrefHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "migrate shared preferences to CE storage"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-nez p0, :cond_0

    .line 165
    sget-object v0, Lcom/sec/internal/helper/ImsSharedPrefHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null "

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void

    .line 169
    :cond_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 170
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 171
    .local v1, "phoneCount":I
    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    .line 172
    .local v2, "ceContext":Landroid/content/Context;
    sget-object v3, Lcom/sec/internal/helper/ImsSharedPrefHelper;->migrationListForCe:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 173
    .local v4, "prefName":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/helper/ImsSharedPrefHelper;->saveWithPhoneIdList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Failed delete shared preferences on DE."

    const-string v7, "Failed to move shared preferences."

    if-eqz v5, :cond_4

    .line 174
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_3

    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, p0, v8}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 176
    sget-object v3, Lcom/sec/internal/helper/ImsSharedPrefHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void

    .line 179
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 180
    sget-object v3, Lcom/sec/internal/helper/ImsSharedPrefHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void

    .line 174
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v5    # "i":I
    :cond_3
    goto :goto_2

    .line 185
    :cond_4
    invoke-virtual {v2, p0, v4}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 186
    sget-object v3, Lcom/sec/internal/helper/ImsSharedPrefHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void

    .line 189
    :cond_5
    invoke-virtual {p0, v4}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 190
    sget-object v3, Lcom/sec/internal/helper/ImsSharedPrefHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void

    .line 194
    .end local v4    # "prefName":Ljava/lang/String;
    :cond_6
    :goto_2
    goto :goto_0

    .line 195
    :cond_7
    return-void
.end method

.method public static put(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .line 143
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$7ztIBvfrfptjcH2hhmgESAkF__4;

    invoke-direct {v1, p3}, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$7ztIBvfrfptjcH2hhmgESAkF__4;-><init>(Landroid/content/ContentValues;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 151
    return-void
.end method

.method public static remove(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .line 125
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$_fvokT8o_jxFYP7ZwaDh827JAHI;

    invoke-direct {v1, p3}, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$_fvokT8o_jxFYP7ZwaDh827JAHI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 126
    return-void
.end method

.method public static save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # I

    .line 93
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$9C313hWa9kHXpD7lJ5-5ZHkSmrM;

    invoke-direct {v1, p3, p4}, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$9C313hWa9kHXpD7lJ5-5ZHkSmrM;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 94
    return-void
.end method

.method public static save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # J

    .line 97
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$ybjr7PYzTnXNqzKWZUf4gf1KtbM;

    invoke-direct {v1, p3, p4, p5}, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$ybjr7PYzTnXNqzKWZUf4gf1KtbM;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 98
    return-void
.end method

.method public static save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 85
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$vmzkEWOOcgTst1WGSR6GsCxVv2I;

    invoke-direct {v1, p3, p4}, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$vmzkEWOOcgTst1WGSR6GsCxVv2I;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 86
    return-void
.end method

.method public static save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p4, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$tltGdCeWPyIkzijTunhh92PpLtM;

    invoke-direct {v1, p3, p4}, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$tltGdCeWPyIkzijTunhh92PpLtM;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 102
    return-void
.end method

.method public static save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Z

    .line 89
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$ejzwfqrx8GvWOzo8cRJK_rXtwIU;

    invoke-direct {v1, p3, p4}, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$ejzwfqrx8GvWOzo8cRJK_rXtwIU;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 90
    return-void
.end method

.method public static declared-synchronized unlockCe()V
    .locals 2

    const-class v0, Lcom/sec/internal/helper/ImsSharedPrefHelper;

    monitor-enter v0

    .line 158
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/sec/internal/helper/ImsSharedPrefHelper;->mCeUnlocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit v0

    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
