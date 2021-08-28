.class public Lcom/sec/internal/ims/settings/ImsAutoUpdate;
.super Ljava/lang/Object;
.source "ImsAutoUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;
    }
.end annotation


# static fields
.field public static final GLOBALSETTINGS_UPDATE:Ljava/lang/String; = "globalsettings_update"

.field public static final IMSPROFILE_UPDATE:Ljava/lang/String; = "imsprofile_update"

.field private static final IMSSWITCH_UPDATE:Ljava/lang/String; = "imsswitch_update"

.field private static final IMSUPDATE_JSON_FILE:Ljava/lang/String; = "imsupdate.json"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MNOMAPUPDATE_JSON_FILE:Ljava/lang/String; = "mnomapupdate.json"

.field private static final MNOMAP_UPDATE:Ljava/lang/String; = "mnomap_update"

.field private static final PROVIDERSETTINGS_UPDATE:Ljava/lang/String; = "providersettings_update"

.field private static final RCSRPOLICY_UPDATE:Ljava/lang/String; = "rcspolicy_update"

.field public static final RESOURCE_CARRIER_FEATURE:I = 0x4

.field public static final RESOURCE_DOWNLOAD:I = 0x0

.field public static final RESOURCE_IMSUPDATE:I = 0x1

.field public static final RESOURCE_MNOMAPUPDATE:I = 0x2

.field public static final RESOURCE_MOBILITY_GLOBAL:I = 0x3

.field private static final SMS_SETTINGS_UPDATE:Ljava/lang/String; = "sms_settings_update"

.field public static final TAG_DEFAULT_RCS_POLICY:Ljava/lang/String; = "default_rcs_policy"

.field public static final TAG_DEFAULT_UP_POLICY:Ljava/lang/String; = "default_up_policy"

.field public static final TAG_GC_BLOCK_MCC_LIST:Ljava/lang/String; = "gc_block_mcc_list"

.field public static final TAG_GLOBALSETTING:Ljava/lang/String; = "globalsetting"

.field public static final TAG_GLOBALSETTINGS_DEFAULT:Ljava/lang/String; = "defaultsetting"

.field public static final TAG_GLOBALSETTINGS_NOHIT:Ljava/lang/String; = "nohitsetting"

.field public static final TAG_IMSSWITCH:Ljava/lang/String; = "imsswitch"

.field public static final TAG_MNOMAP_ADD:Ljava/lang/String; = "add_mnomap"

.field public static final TAG_MNOMAP_REMOVE:Ljava/lang/String; = "remove_mnomap"

.field public static final TAG_POLICY_NAME:Ljava/lang/String; = "policy_name"

.field public static final TAG_PROFILE:Ljava/lang/String; = "profile"

.field public static final TAG_RCS_POLICY:Ljava/lang/String; = "rcs_policy"

.field public static final TAG_REPLACE_GC_BLOCK_MCC_LIST:Ljava/lang/String; = "replace_gc_block_mcc_list"

.field private static final UPDATE_FILE_PATH_CSC:Ljava/lang/String; = "/system/csc"

.field private static final sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/settings/ImsAutoUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCarrierUpdate:Lcom/google/gson/JsonElement;

.field private mContext:Landroid/content/Context;

.field private mCurrentHash:Ljava/lang/String;

.field private mHashChanged:Z

.field private mHashManager:Lcom/sec/internal/helper/HashManager;

.field private mImsMobilityUpdate:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

.field private mLoaded:Z

.field public mMnomapUpdate:Lcom/google/gson/JsonElement;

.field private mNote:Ljava/lang/String;

.field private mPhoneId:I

.field private mSmkConfig:Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

.field private mUpdate:Lcom/google/gson/JsonElement;

.field private mUpdatedGlobalSettings:Z

.field private mUpdatedImsProfile:Z

.field private mUpdatedImsSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sInstances:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mLoaded:Z

    .line 78
    sget-object v1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdate:Lcom/google/gson/JsonElement;

    .line 79
    sget-object v1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mMnomapUpdate:Lcom/google/gson/JsonElement;

    .line 80
    sget-object v1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCarrierUpdate:Lcom/google/gson/JsonElement;

    .line 81
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCurrentHash:Ljava/lang/String;

    .line 82
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashChanged:Z

    .line 83
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedImsProfile:Z

    .line 84
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedGlobalSettings:Z

    .line 85
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedImsSwitch:Z

    .line 86
    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mNote:Ljava/lang/String;

    .line 95
    invoke-static {p1, p2}, Lcom/sec/internal/helper/HashManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/helper/HashManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashManager:Lcom/sec/internal/helper/HashManager;

    .line 96
    invoke-static {p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mImsMobilityUpdate:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    .line 97
    new-instance v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mSmkConfig:Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

    .line 98
    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->load()V

    .line 99
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mContext:Landroid/content/Context;

    .line 100
    iput p2, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    .line 101
    return-void
.end method

.method private applyRcsDefaultPolicyUpdate(Lcom/google/gson/JsonElement;IZ)Lcom/google/gson/JsonElement;
    .locals 8
    .param p1, "orgDefaultPolicy"    # Lcom/google/gson/JsonElement;
    .param p2, "source"    # I
    .param p3, "isUp"    # Z

    .line 743
    const-string/jumbo v0, "rcspolicy_update"

    const-string v1, " source "

    if-eqz p3, :cond_0

    const-string v2, "default_up_policy"

    goto :goto_0

    :cond_0
    const-string v2, "default_rcs_policy"

    .line 744
    .local v2, "defaultPolicyTag":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 745
    .local v3, "jsonSource":Lcom/google/gson/JsonElement;
    sget-object v4, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 747
    .local v4, "updateDefaultPolicy":Lcom/google/gson/JsonElement;
    :try_start_0
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 749
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 750
    .local v0, "update":Lcom/google/gson/JsonObject;
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 752
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 758
    .end local v0    # "update":Lcom/google/gson/JsonObject;
    :cond_1
    goto :goto_1

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v5, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception on applyDefaultRcsPolicyUpdate :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sourceToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 756
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    invoke-static {v4}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    const-string v5, "applyDefaultRcsPolicyUpdate :"

    if-nez v0, :cond_2

    .line 761
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not valid"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 761
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return-object p1

    .line 766
    :cond_2
    invoke-static {p1, v4}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 767
    .local v0, "merged":Lcom/google/gson/JsonElement;
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 768
    return-object v0

    .line 771
    :cond_3
    sget-object v6, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " merge result not valid"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return-object p1
.end method

.method private applyRcsPolicySettingUpdate(Lcom/google/gson/JsonElement;ILjava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 10
    .param p1, "orgPolicy"    # Lcom/google/gson/JsonElement;
    .param p2, "source"    # I
    .param p3, "orgPolicyName"    # Ljava/lang/String;

    .line 801
    const-string/jumbo v0, "policy_name"

    const-string/jumbo v1, "rcs_policy"

    const-string/jumbo v2, "rcspolicy_update"

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 802
    .local v3, "jsonSource":Lcom/google/gson/JsonElement;
    sget-object v4, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 804
    .local v4, "updatePolicy":Lcom/google/gson/JsonElement;
    :try_start_0
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 806
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 807
    .local v2, "updateListobj":Lcom/google/gson/JsonObject;
    invoke-static {v2}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 809
    invoke-virtual {v2, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 810
    .local v1, "updateList":Lcom/google/gson/JsonArray;
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    .line 811
    .local v6, "elm":Lcom/google/gson/JsonElement;
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 812
    .local v7, "obj":Lcom/google/gson/JsonObject;
    invoke-virtual {v7, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 814
    invoke-virtual {v7, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 816
    .local v8, "policyName":Ljava/lang/String;
    invoke-static {v8, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_0

    .line 818
    move-object v4, v6

    .line 819
    goto :goto_1

    .line 822
    .end local v6    # "elm":Lcom/google/gson/JsonElement;
    .end local v7    # "obj":Lcom/google/gson/JsonObject;
    .end local v8    # "policyName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 828
    .end local v1    # "updateList":Lcom/google/gson/JsonArray;
    .end local v2    # "updateListobj":Lcom/google/gson/JsonObject;
    :cond_1
    :goto_1
    nop

    .line 830
    invoke-static {v4}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    const-string v1, " source "

    const-string v2, "applyRcsPolicySettingUpdate : "

    if-nez v0, :cond_2

    .line 831
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not valid"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 831
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return-object p1

    .line 836
    :cond_2
    invoke-static {p1, v4}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 837
    .local v0, "merged":Lcom/google/gson/JsonElement;
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 838
    return-object v0

    .line 841
    :cond_3
    sget-object v5, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " merge result not valid"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 841
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    return-object p1

    .line 825
    .end local v0    # "merged":Lcom/google/gson/JsonElement;
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception on applyRcsPolicySettingUpdate : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    return-object p1
.end method

.method public static getIndexWithMnoname(Lcom/google/gson/JsonArray;Ljava/lang/String;)I
    .locals 4
    .param p0, "array"    # Lcom/google/gson/JsonArray;
    .param p1, "mnoname"    # Ljava/lang/String;

    .line 884
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 885
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 887
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 888
    .local v1, "obj":Lcom/google/gson/JsonObject;
    const-string v2, "mnoname"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 889
    .local v2, "mnonameVal":Lcom/google/gson/JsonElement;
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_0

    .line 890
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 891
    return v0

    .line 895
    .end local v1    # "obj":Lcom/google/gson/JsonObject;
    .end local v2    # "mnonameVal":Lcom/google/gson/JsonElement;
    :cond_0
    goto :goto_1

    .line 893
    :catch_0
    move-exception v1

    .line 894
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 885
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 898
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no matched element with mnoname "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/4 v0, -0x1

    return v0
.end method

.method private static getIndexWithNames(Lcom/google/gson/JsonArray;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "array"    # Lcom/google/gson/JsonArray;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mnoname"    # Ljava/lang/String;

    .line 903
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 904
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 906
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 907
    .local v1, "obj":Lcom/google/gson/JsonObject;
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 908
    .local v2, "nameVal":Lcom/google/gson/JsonElement;
    const-string v3, "mnoname"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 909
    .local v3, "mnonameVal":Lcom/google/gson/JsonElement;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->isJsonNull()Z

    move-result v4

    if-nez v4, :cond_0

    .line 910
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 911
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 912
    return v0

    .line 916
    .end local v1    # "obj":Lcom/google/gson/JsonObject;
    .end local v2    # "nameVal":Lcom/google/gson/JsonElement;
    .end local v3    # "mnonameVal":Lcom/google/gson/JsonElement;
    :cond_0
    goto :goto_1

    .line 914
    :catch_0
    move-exception v1

    .line 915
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 904
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 919
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no matched element with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "and mnoname "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v0, -0x1

    return v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 104
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    sget-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    monitor-exit v0

    return-object v1

    .line 108
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-direct {v3, p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->copyMnoMapUpdateToInternal()V

    .line 110
    sget-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->checkLoaded()Z

    .line 112
    sget-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    monitor-exit v0

    return-object v1

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadImsAutoUpdate()Z
    .locals 13

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getUpdateFilePath()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "updateFilePath":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Use imsupdate file on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "]"

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_2

    .line 133
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Lcom/google/gson/stream/JsonReader;

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v5, v6}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 136
    .local v5, "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_2
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    .line 137
    .local v6, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v6, v5}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdate:Lcom/google/gson/JsonElement;

    .line 138
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdate:Lcom/google/gson/JsonElement;

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 140
    iget-object v9, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdate:Lcom/google/gson/JsonElement;

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    const-string v10, "note"

    invoke-virtual {v9, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    .line 141
    .local v9, "note":Lcom/google/gson/JsonElement;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v10

    if-nez v10, :cond_0

    .line 142
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mNote:Ljava/lang/String;

    .line 143
    sget-object v10, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "imsupdate is ready : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mNote:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v9    # "note":Lcom/google/gson/JsonElement;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v9, v9

    new-array v9, v9, [B

    .line 149
    .local v9, "content":[B
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 150
    invoke-virtual {v3, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .line 151
    .local v7, "cnt":I
    if-gtz v7, :cond_1

    .line 152
    sget-object v8, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to read imsupdate.json! Got ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :cond_1
    :try_start_3
    iget-object v8, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashManager:Lcom/sec/internal/helper/HashManager;

    invoke-virtual {v8, v9}, Lcom/sec/internal/helper/HashManager;->getHash([B)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCurrentHash:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v8

    :goto_0
    nop

    .line 160
    .end local v6    # "parser":Lcom/google/gson/JsonParser;
    .end local v7    # "cnt":I
    .end local v9    # "content":[B
    :try_start_4
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v5    # "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 133
    .restart local v5    # "reader":Lcom/google/gson/stream/JsonReader;
    :catchall_0
    move-exception v6

    :try_start_6
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    :try_start_7
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Z
    .end local v1    # "updateFilePath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    :goto_1
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v5    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v0    # "result":Z
    .restart local v1    # "updateFilePath":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    :catchall_2
    move-exception v5

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v6

    :try_start_9
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Z
    .end local v1    # "updateFilePath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    :goto_2
    throw v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_9 .. :try_end_9} :catch_1

    .line 160
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "result":Z
    .restart local v1    # "updateFilePath":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    :catch_1
    move-exception v3

    .line 161
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    sget-object v5, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v6, "imsupdate.json parsing fail."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x0

    .line 164
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    goto :goto_4

    .line 166
    :cond_2
    sget-object v3, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v5, "imsupdate.json not found."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v3, ""

    iput-object v3, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCurrentHash:Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    .line 171
    :goto_4
    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashManager:Lcom/sec/internal/helper/HashManager;

    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCurrentHash:Ljava/lang/String;

    const-string v6, "imsupdate"

    invoke-virtual {v3, v6, v5}, Lcom/sec/internal/helper/HashManager;->isHashChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashChanged:Z

    .line 172
    sget-object v3, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadImsAutoUpdate: hash changed ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashChanged:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v0
.end method

.method private sourceToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # I

    .line 331
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN update source "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 337
    :cond_0
    const-string v0, "MOBILITY_GLOBAL"

    return-object v0

    .line 335
    :cond_1
    const-string v0, "MNOUPDATE"

    return-object v0

    .line 333
    :cond_2
    const-string v0, "IMSUPDATE"

    return-object v0

    .line 339
    :cond_3
    const-string v0, "SMK"

    return-object v0
.end method


# virtual methods
.method public applyDefaultSettingUpdate(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;
    .locals 5
    .param p1, "defaultElement"    # Lcom/google/gson/JsonElement;

    .line 666
    const/4 v0, 0x0

    const-string v1, "defaultsetting"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 667
    .local v0, "smkUpdatedDefault":Lcom/google/gson/JsonElement;
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 668
    .local v2, "autoUpdatedDefault":Lcom/google/gson/JsonElement;
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 670
    .local v1, "carrierFeatureDefault":Lcom/google/gson/JsonElement;
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isForceSMKUpdate()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 671
    sget-object v3, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v4, "SMK ForceMode - default"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-static {v2}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 673
    invoke-static {p1, v2}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 674
    .local v3, "mergedDefault":Lcom/google/gson/JsonElement;
    invoke-static {v3}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 675
    move-object p1, v3

    .line 678
    .end local v3    # "mergedDefault":Lcom/google/gson/JsonElement;
    :cond_0
    invoke-static {v1}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 679
    invoke-static {p1, v1}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 680
    .restart local v3    # "mergedDefault":Lcom/google/gson/JsonElement;
    invoke-static {v3}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 681
    move-object p1, v3

    .line 684
    .end local v3    # "mergedDefault":Lcom/google/gson/JsonElement;
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 685
    invoke-static {p1, v0}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 686
    .restart local v3    # "mergedDefault":Lcom/google/gson/JsonElement;
    invoke-static {v3}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 687
    move-object p1, v3

    goto :goto_0

    .line 692
    .end local v3    # "mergedDefault":Lcom/google/gson/JsonElement;
    :cond_2
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 693
    invoke-static {p1, v0}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 694
    .restart local v3    # "mergedDefault":Lcom/google/gson/JsonElement;
    invoke-static {v3}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 695
    move-object p1, v3

    .line 700
    .end local v3    # "mergedDefault":Lcom/google/gson/JsonElement;
    :cond_3
    invoke-static {v2}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 701
    invoke-static {p1, v2}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 702
    .restart local v3    # "mergedDefault":Lcom/google/gson/JsonElement;
    invoke-static {v3}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 703
    move-object p1, v3

    .line 708
    .end local v3    # "mergedDefault":Lcom/google/gson/JsonElement;
    :cond_4
    invoke-static {v1}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 709
    invoke-static {p1, v1}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 710
    .restart local v3    # "mergedDefault":Lcom/google/gson/JsonElement;
    invoke-static {v3}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 711
    move-object p1, v3

    .line 716
    .end local v3    # "mergedDefault":Lcom/google/gson/JsonElement;
    :cond_5
    :goto_0
    return-object p1
.end method

.method public applyGlobalSettingUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;
    .locals 7
    .param p1, "globalElement"    # Lcom/google/gson/JsonElement;
    .param p2, "source"    # I

    .line 543
    invoke-static {p1}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Not a valid GlobalElement."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-object p1

    .line 548
    :cond_0
    move-object v0, p1

    .line 549
    .local v0, "updatedProf":Lcom/google/gson/JsonElement;
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "mnoname"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "orgMnoName":Ljava/lang/String;
    const-string v2, "globalsetting"

    invoke-virtual {p0, p2, v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 552
    .local v2, "updateDiff":Lcom/google/gson/JsonElement;
    invoke-static {v2}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 553
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getIndexWithMnoname(Lcom/google/gson/JsonArray;Ljava/lang/String;)I

    move-result v3

    .line 554
    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 555
    sget-object v4, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found Globalsetting for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 557
    .local v4, "updateElement":Lcom/google/gson/JsonElement;
    invoke-static {p1, v4}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 561
    .end local v3    # "index":I
    .end local v4    # "updateElement":Lcom/google/gson/JsonElement;
    :cond_1
    sget-object v3, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-eq v0, v3, :cond_2

    move-object v3, v0

    goto :goto_0

    :cond_2
    move-object v3, p1

    :goto_0
    return-object v3
.end method

.method public applyImsProfileUpdate(Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonElement;
    .locals 6
    .param p1, "baseProfiles"    # Lcom/google/gson/JsonArray;

    .line 452
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 454
    .local v0, "profiles":Lcom/google/gson/JsonElement;
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isForceSMKUpdate()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 455
    sget-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SMK ForceMode - ImsProfile"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsProfileUpdate(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsProfileUpdate(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsProfileUpdate(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsProfileUpdate(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsProfileUpdate(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsProfileUpdate(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 476
    :goto_0
    iput-boolean v4, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedImsProfile:Z

    .line 477
    iget-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedGlobalSettings:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedImsSwitch:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashChanged:Z

    if-eqz v1, :cond_2

    .line 478
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->saveHash()V

    .line 481
    :cond_2
    return-object v0
.end method

.method public applyImsProfileUpdate(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonElement;
    .locals 13
    .param p1, "baseProfiles"    # Lcom/google/gson/JsonArray;
    .param p2, "source"    # I

    .line 485
    const-class v0, Lcom/google/gson/JsonArray;

    invoke-static {p1, v0}, Lcom/sec/internal/helper/JsonUtil;->deepCopy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    .line 486
    .local v0, "orgProfiles":Lcom/google/gson/JsonArray;
    const-string/jumbo v1, "profile"

    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getImsProfileUpdate(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 488
    .local v1, "update":Lcom/google/gson/JsonElement;
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 489
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    .line 490
    .local v3, "p":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 491
    .local v4, "prof":Lcom/google/gson/JsonObject;
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "mnoname"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 492
    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 494
    .local v7, "mnoname":Ljava/lang/String;
    invoke-static {v0, v5, v7}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getIndexWithNames(Lcom/google/gson/JsonArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 495
    .local v8, "index":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 496
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 497
    sget-object v6, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add imsprofile for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 500
    :cond_0
    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    .line 501
    .local v9, "tmp":Lcom/google/gson/JsonElement;
    invoke-virtual {v0, v8}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 502
    .local v10, "profUpdate":Lcom/google/gson/JsonElement;
    invoke-static {v10, v3}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v11

    .line 503
    .local v11, "updatedProf":Lcom/google/gson/JsonElement;
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v12

    if-nez v12, :cond_1

    .line 504
    invoke-virtual {v0, v8, v11}, Lcom/google/gson/JsonArray;->set(ILcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    .line 507
    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v12

    if-nez v12, :cond_2

    .line 508
    invoke-virtual {v4, v6, v9}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 512
    .end local v3    # "p":Lcom/google/gson/JsonElement;
    .end local v4    # "prof":Lcom/google/gson/JsonObject;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "mnoname":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v9    # "tmp":Lcom/google/gson/JsonElement;
    .end local v10    # "profUpdate":Lcom/google/gson/JsonElement;
    .end local v11    # "updatedProf":Lcom/google/gson/JsonElement;
    :cond_2
    :goto_1
    goto :goto_0

    .line 515
    :cond_3
    return-object v0
.end method

.method public applyImsSwitchUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;
    .locals 7
    .param p1, "imsswitchElement"    # Lcom/google/gson/JsonElement;
    .param p2, "source"    # I

    .line 579
    invoke-static {p1}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Not a valid imsswitchElement."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-object p1

    .line 584
    :cond_0
    move-object v0, p1

    .line 585
    .local v0, "updatedProf":Lcom/google/gson/JsonElement;
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "mnoname"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "orgMnoName":Ljava/lang/String;
    const-string v2, "imsswitch"

    invoke-virtual {p0, p2, v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getImsSwitches(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 588
    .local v2, "updateDiff":Lcom/google/gson/JsonElement;
    invoke-static {v2}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 589
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getIndexWithMnoname(Lcom/google/gson/JsonArray;Ljava/lang/String;)I

    move-result v3

    .line 590
    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 591
    sget-object v4, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found ImsSwitch for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 593
    .local v4, "updateElement":Lcom/google/gson/JsonElement;
    invoke-static {p1, v4}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 597
    .end local v3    # "index":I
    .end local v4    # "updateElement":Lcom/google/gson/JsonElement;
    :cond_1
    sget-object v3, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-eq v0, v3, :cond_2

    move-object v3, v0

    goto :goto_0

    :cond_2
    move-object v3, p1

    :goto_0
    return-object v3
.end method

.method public applyNohitSettingUpdate(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;
    .locals 5
    .param p1, "nohitElement"    # Lcom/google/gson/JsonElement;

    .line 606
    const/4 v0, 0x0

    const-string v1, "nohitsetting"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 607
    .local v0, "smkUpdatedNohit":Lcom/google/gson/JsonElement;
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 608
    .local v2, "autoUpdatedNohit":Lcom/google/gson/JsonElement;
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 610
    .local v1, "carrierFeatureNohit":Lcom/google/gson/JsonElement;
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isForceSMKUpdate()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 611
    sget-object v3, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v4, "SMK ForceMode - Nohit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-static {v2}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 613
    invoke-static {p1, v2}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 614
    .local v3, "mergedNohit":Lcom/google/gson/JsonElement;
    invoke-static {v3}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 615
    move-object p1, v3

    .line 618
    .end local v3    # "mergedNohit":Lcom/google/gson/JsonElement;
    :cond_0
    invoke-static {v1}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 619
    invoke-static {p1, v1}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 620
    .restart local v3    # "mergedNohit":Lcom/google/gson/JsonElement;
    invoke-static {v3}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 621
    move-object p1, v3

    .line 624
    .end local v3    # "mergedNohit":Lcom/google/gson/JsonElement;
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 625
    invoke-static {p1, v0}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 626
    .restart local v3    # "mergedNohit":Lcom/google/gson/JsonElement;
    invoke-static {v3}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 627
    move-object p1, v3

    goto :goto_0

    .line 632
    .end local v3    # "mergedNohit":Lcom/google/gson/JsonElement;
    :cond_2
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 633
    invoke-static {p1, v0}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 634
    .restart local v3    # "mergedNohit":Lcom/google/gson/JsonElement;
    invoke-static {v3}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 635
    move-object p1, v3

    .line 640
    .end local v3    # "mergedNohit":Lcom/google/gson/JsonElement;
    :cond_3
    invoke-static {v2}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 641
    invoke-static {p1, v2}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 642
    .restart local v3    # "mergedNohit":Lcom/google/gson/JsonElement;
    invoke-static {v3}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 643
    move-object p1, v3

    .line 648
    .end local v3    # "mergedNohit":Lcom/google/gson/JsonElement;
    :cond_4
    invoke-static {v1}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 649
    invoke-static {p1, v1}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 650
    .restart local v3    # "mergedNohit":Lcom/google/gson/JsonElement;
    invoke-static {v3}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 651
    move-object p1, v3

    .line 656
    .end local v3    # "mergedNohit":Lcom/google/gson/JsonElement;
    :cond_5
    :goto_0
    return-object p1
.end method

.method public checkLoaded()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mLoaded:Z

    if-nez v0, :cond_3

    .line 118
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->loadImsAutoUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdate:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getSmkConfig()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mLoaded:Z

    .line 121
    :cond_3
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mLoaded:Z

    return v0
.end method

.method public clearSmkConfig()V
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mSmkConfig:Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->clearSmkConfig()V

    .line 932
    return-void
.end method

.method public copyMnoMapUpdateToInternal()V
    .locals 3

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnoMapUpdateFile(Z)Ljava/io/File;

    move-result-object v0

    .line 223
    .local v0, "fromCsc":Ljava/io/File;
    if-nez v0, :cond_0

    .line 225
    sget-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v2, "There are no mnomapupdate.json on CSC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .line 228
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnoMapUpdateFile(Z)Ljava/io/File;

    move-result-object v1

    .line 229
    .local v1, "fromIntennal":Ljava/io/File;
    invoke-static {v0, v1}, Lcom/sec/internal/helper/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 230
    return-void
.end method

.method public getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 5
    .param p1, "source"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 379
    const-string v0, "globalsettings_update"

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 381
    .local v1, "jsonSource":Lcom/google/gson/JsonElement;
    :try_start_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 385
    .local v0, "update":Lcom/google/gson/JsonObject;
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {v0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 392
    .end local v0    # "update":Lcom/google/gson/JsonObject;
    :cond_0
    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getGlobalSettings :  source : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " tag :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object v0
.end method

.method public getGlobalSettingsSpecificParam(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "source"    # I
    .param p2, "mnoName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 397
    const-string v0, "globalsetting"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 399
    .local v0, "updatedDiff":Lcom/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 401
    .local v1, "array":Lcom/google/gson/JsonArray;
    invoke-static {v1, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getIndexWithMnoname(Lcom/google/gson/JsonArray;Ljava/lang/String;)I

    move-result v2

    .line 402
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 403
    sget-object v3, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found Globalsetting for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 405
    .local v3, "object":Lcom/google/gson/JsonObject;
    invoke-virtual {v3, p3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 406
    invoke-virtual {v3, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 410
    .end local v1    # "array":Lcom/google/gson/JsonArray;
    .end local v2    # "index":I
    .end local v3    # "object":Lcom/google/gson/JsonObject;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getImsProfileUpdate(ILjava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 5
    .param p1, "source"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 346
    const-string v0, "imsprofile_update"

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 348
    .local v1, "jsonSource":Lcom/google/gson/JsonElement;
    :try_start_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 350
    .local v0, "update":Lcom/google/gson/JsonObject;
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {v0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 357
    .end local v0    # "update":Lcom/google/gson/JsonObject;
    :cond_0
    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getImsProfileUpdate :  source : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " tag :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object v0
.end method

.method public getImsSwitches(ILjava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 5
    .param p1, "source"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 362
    const-string v0, "imsswitch_update"

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 364
    .local v1, "jsonSource":Lcom/google/gson/JsonElement;
    :try_start_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 367
    .local v0, "update":Lcom/google/gson/JsonObject;
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    invoke-virtual {v0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 374
    .end local v0    # "update":Lcom/google/gson/JsonObject;
    :cond_0
    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getImsSwitches :  source : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " tag :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 372
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object v0
.end method

.method public getMnoMapUpdateFile(Z)Ljava/io/File;
    .locals 3
    .param p1, "internal"    # Z

    .line 211
    if-eqz p1, :cond_0

    .line 213
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "mnomapupdate.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    goto :goto_0

    .line 215
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomapUpdateFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .restart local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v0
.end method

.method public getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 5
    .param p1, "source"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 414
    const-string v0, "mnomap_update"

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 416
    .local v1, "jsonSource":Lcom/google/gson/JsonElement;
    :try_start_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 418
    .local v0, "update":Lcom/google/gson/JsonObject;
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 419
    const-string v2, "[]"

    invoke-virtual {v0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    sget-object v2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object v2

    .line 422
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 428
    .end local v0    # "update":Lcom/google/gson/JsonObject;
    :cond_1
    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getMnomap :  source : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " tag :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object v0
.end method

.method public getMnomapUpdateFilePath()Ljava/lang/String;
    .locals 7

    .line 291
    const-string v0, ""

    .line 292
    .local v0, "path":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isOmcModel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    iget v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/OmcCode;->getNWPath(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "omcPath":Ljava/lang/String;
    const-string v2, "/system/csc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    const-string v0, "/system/csc/mnomapupdate.json"

    goto :goto_0

    .line 297
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mnomapupdate.json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->getEtcPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .end local v1    # "omcPath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    goto :goto_1

    .line 305
    :cond_2
    const-string v0, "/system/csc/mnomapupdate.json"

    .line 307
    :goto_1
    return-object v0
.end method

.method public getProviderSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 5
    .param p1, "source"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 433
    const-string/jumbo v0, "providersettings_update"

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 435
    .local v1, "jsonSource":Lcom/google/gson/JsonElement;
    :try_start_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 437
    .local v0, "update":Lcom/google/gson/JsonObject;
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    const-string v2, "[]"

    invoke-virtual {v0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    sget-object v2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object v2

    .line 441
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 447
    .end local v0    # "update":Lcom/google/gson/JsonObject;
    :cond_1
    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getProviderSettings :  source : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " tag :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 445
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object v0
.end method

.method public getRcsDefaultPolicyUpdate(Lcom/google/gson/JsonElement;Z)Lcom/google/gson/JsonElement;
    .locals 1
    .param p1, "defaultPolicy"    # Lcom/google/gson/JsonElement;
    .param p2, "isUp"    # Z

    .line 728
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyRcsDefaultPolicyUpdate(Lcom/google/gson/JsonElement;IZ)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 733
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyRcsDefaultPolicyUpdate(Lcom/google/gson/JsonElement;IZ)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 736
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyRcsDefaultPolicyUpdate(Lcom/google/gson/JsonElement;IZ)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 738
    return-object p1
.end method

.method public getRcsPolicyUpdate(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 2
    .param p1, "policy"    # Lcom/google/gson/JsonElement;
    .param p2, "policyName"    # Ljava/lang/String;

    .line 777
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 785
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyRcsPolicySettingUpdate(Lcom/google/gson/JsonElement;ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 790
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyRcsPolicySettingUpdate(Lcom/google/gson/JsonElement;ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 793
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyRcsPolicySettingUpdate(Lcom/google/gson/JsonElement;ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    goto :goto_1

    .line 778
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "policyName is not valid or policy is JsonNull"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :goto_1
    return-object p1
.end method

.method public getSmkConfig()Lcom/google/gson/JsonObject;
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mSmkConfig:Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->getSmkConfig()Lcom/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method protected getUpdateFilePath()Ljava/lang/String;
    .locals 7

    .line 271
    const-string v0, ""

    .line 272
    .local v0, "path":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isOmcModel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    iget v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/OmcCode;->getNWPath(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "omcPath":Ljava/lang/String;
    const-string v2, "/system/csc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const-string v0, "/system/csc/imsupdate.json"

    goto :goto_0

    .line 277
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "imsupdate.json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->getEtcPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .end local v1    # "omcPath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    goto :goto_1

    .line 285
    :cond_2
    const-string v0, "/system/csc/imsupdate.json"

    .line 287
    :goto_1
    return-object v0
.end method

.method public getUpdatedGlobalSetting(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;
    .locals 6
    .param p1, "globalElement"    # Lcom/google/gson/JsonElement;

    .line 521
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isForceSMKUpdate()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 522
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SMK ForceMode - GlobalSettings"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyGlobalSettingUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 524
    .local v0, "globalsetting":Lcom/google/gson/JsonElement;
    invoke-virtual {p0, v0, v4}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyGlobalSettingUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 525
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyGlobalSettingUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 526
    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyGlobalSettingUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    goto :goto_0

    .line 528
    .end local v0    # "globalsetting":Lcom/google/gson/JsonElement;
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyGlobalSettingUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 529
    .restart local v0    # "globalsetting":Lcom/google/gson/JsonElement;
    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyGlobalSettingUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 530
    invoke-virtual {p0, v0, v4}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyGlobalSettingUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 531
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyGlobalSettingUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 534
    :goto_0
    iput-boolean v4, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedGlobalSettings:Z

    .line 535
    iget-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedImsProfile:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashChanged:Z

    if-eqz v1, :cond_1

    .line 536
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->saveHash()V

    .line 539
    :cond_1
    return-object v0
.end method

.method public getUpdatedImsSwitch(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;
    .locals 3
    .param p1, "imsswitchElement"    # Lcom/google/gson/JsonElement;

    .line 567
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsSwitchUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 568
    .local v1, "imsswitch":Lcom/google/gson/JsonElement;
    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsSwitchUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 570
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedImsSwitch:Z

    .line 571
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedImsProfile:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashChanged:Z

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->saveHash()V

    .line 575
    :cond_0
    return-object v1
.end method

.method getUpdatedSmsSetting(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 11
    .param p1, "baseSmsSetting"    # Lcom/google/gson/JsonElement;
    .param p2, "updateTarget"    # Ljava/lang/String;

    .line 847
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 849
    .local v0, "resourcePriority":[I
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isForceSMKUpdate()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 850
    const/4 v1, 0x1

    aput v1, v0, v2

    .line 851
    aput v2, v0, v1

    .line 854
    :cond_0
    sget-object v1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 855
    .local v1, "updatedSmsSetting":Lcom/google/gson/JsonElement;
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v4, "mnoname"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 856
    .local v3, "baseMnoName":Ljava/lang/String;
    array-length v5, v0

    :goto_0
    if-ge v2, v5, :cond_3

    aget v6, v0, v2

    .line 858
    .local v6, "resource":I
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    const-string/jumbo v8, "sms_settings_update"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 859
    .local v7, "updatedObject":Lcom/google/gson/JsonObject;
    invoke-static {v7}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 860
    const-string v8, "default_setting"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 861
    invoke-virtual {v7, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v8

    move-object v1, v8

    goto :goto_1

    .line 862
    :cond_1
    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 863
    const-string/jumbo v8, "sms_settings"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v8

    .line 864
    .local v8, "updatedSmsSettingArray":Lcom/google/gson/JsonArray;
    invoke-static {v8, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getIndexWithMnoname(Lcom/google/gson/JsonArray;Ljava/lang/String;)I

    move-result v9

    .line 865
    .local v9, "index":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 866
    invoke-virtual {v8, v9}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v10

    .line 872
    .end local v7    # "updatedObject":Lcom/google/gson/JsonObject;
    .end local v8    # "updatedSmsSettingArray":Lcom/google/gson/JsonArray;
    .end local v9    # "index":I
    :cond_2
    :goto_1
    goto :goto_2

    .line 870
    :catch_0
    move-exception v7

    .line 871
    .local v7, "e":Ljava/lang/RuntimeException;
    sget-object v8, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to find updated sms setting from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    .end local v6    # "resource":I
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 875
    :cond_3
    invoke-static {p1, v1}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 876
    .local v2, "updateResult":Lcom/google/gson/JsonElement;
    invoke-static {v2}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 877
    return-object v2

    .line 879
    :cond_4
    return-object p1

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public isForceSMKUpdate()Ljava/lang/Boolean;
    .locals 4

    .line 939
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 940
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getSmkConfig()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 941
    .local v1, "smkObject":Lcom/google/gson/JsonObject;
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mSmkConfig:Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->hasNewSmkConfig()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 942
    :cond_0
    const-string/jumbo v2, "update_method"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 943
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    if-nez v2, :cond_1

    .line 944
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 947
    :cond_1
    return-object v0
.end method

.method public isUpdateNeeded()Z
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->checkLoaded()Z

    .line 312
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashChanged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mSmkConfig:Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->hasNewSmkConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public loadCarrierFeature(I)Z
    .locals 9
    .param p1, "phoneId"    # I

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getCarrierId(IZ)I

    move-result v1

    .line 179
    .local v1, "carrierId":I
    const-string/jumbo v3, "persist.ims.carrierfeature_force_use"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 180
    .local v3, "forceUseProperty":I
    sget-object v5, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadCarrierFeature phoneId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " carrierId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " forceProp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-ne v1, v4, :cond_0

    if-ne v3, v4, :cond_0

    .line 185
    return v0

    .line 189
    :cond_0
    :try_start_0
    new-instance v4, Lcom/google/gson/JsonParser;

    invoke-direct {v4}, Lcom/google/gson/JsonParser;-><init>()V

    .line 191
    .local v4, "parser":Lcom/google/gson/JsonParser;
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v5

    const-string v6, "CarrierFeature_IMS_ImsUpdate"

    const-string v7, ""

    .line 192
    invoke-virtual {v5, p1, v6, v7, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "updateList":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 194
    sget-object v5, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v6, "carrierfeature was not found."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v0

    .line 197
    :cond_1
    invoke-virtual {v4, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    .line 198
    .local v5, "je":Lcom/google/gson/JsonElement;
    invoke-static {v5}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 199
    sget-object v6, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Successfully get carrier feature : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iput-object v5, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCarrierUpdate:Lcom/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    const/4 v0, 0x1

    .line 205
    .end local v2    # "updateList":Ljava/lang/String;
    .end local v4    # "parser":Lcom/google/gson/JsonParser;
    .end local v5    # "je":Lcom/google/gson/JsonElement;
    :cond_2
    goto :goto_0

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem on Carrier feature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public loadMnomapAutoUpdate()Z
    .locals 8

    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "result":Z
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnoMapUpdateFile(Z)Ljava/io/File;

    move-result-object v1

    .line 237
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 238
    :try_start_0
    new-instance v2, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    .line 239
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v2, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .local v2, "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_1
    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    .line 242
    .local v3, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v3, v2}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mMnomapUpdate:Lcom/google/gson/JsonElement;

    .line 243
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mMnomapUpdate:Lcom/google/gson/JsonElement;

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    const/4 v0, 0x1

    .line 245
    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mMnomapUpdate:Lcom/google/gson/JsonElement;

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v5, "note"

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 246
    .local v4, "note":Lcom/google/gson/JsonElement;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v5

    if-nez v5, :cond_0

    .line 247
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mNote:Ljava/lang/String;

    .line 248
    sget-object v5, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mnomapupdate is ready : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mNote:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    .end local v3    # "parser":Lcom/google/gson/JsonParser;
    .end local v4    # "note":Lcom/google/gson/JsonElement;
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 238
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Z
    .end local v1    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 251
    .end local v2    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v0    # "result":Z
    .restart local v1    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    :catch_0
    move-exception v2

    .line 252
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    sget-object v3, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v4, "mnomapupdate.json parsing fail."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x0

    .line 255
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 257
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v3, "mnomapupdate.json not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    .line 261
    :goto_2
    return v0
.end method

.method public saveHash()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashManager:Lcom/sec/internal/helper/HashManager;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCurrentHash:Ljava/lang/String;

    const-string v2, "imsupdate"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/helper/HashManager;->saveHash(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashManager:Lcom/sec/internal/helper/HashManager;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mNote:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/helper/HashManager;->saveMemo(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashChanged:Z

    .line 268
    return-void
.end method

.method public selectResource(I)Lcom/google/gson/JsonElement;
    .locals 1
    .param p1, "source"    # I

    .line 316
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mSmkConfig:Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getSmkConfig()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getSmkConfig()Lcom/google/gson/JsonObject;

    move-result-object v0

    :goto_0
    return-object v0

    .line 318
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdate:Lcom/google/gson/JsonElement;

    return-object v0

    .line 320
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mMnomapUpdate:Lcom/google/gson/JsonElement;

    return-object v0

    .line 322
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 323
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mImsMobilityUpdate:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->getMobilityGlobalSettings()Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0

    .line 324
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCarrierUpdate:Lcom/google/gson/JsonElement;

    return-object v0

    .line 327
    :cond_5
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object v0
.end method

.method public updateSmkConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "config"    # Ljava/lang/String;

    .line 924
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 926
    .local v0, "parser":Lcom/google/gson/JsonParser;
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mSmkConfig:Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->saveSmkConfig(Lcom/google/gson/JsonObject;)V

    .line 928
    .end local v0    # "parser":Lcom/google/gson/JsonParser;
    :cond_0
    return-void
.end method
