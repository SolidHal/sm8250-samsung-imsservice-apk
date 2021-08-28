.class public Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;
.super Ljava/lang/Object;
.source "CloudMessagePreferenceManager.java"


# static fields
.field private static final ACS_HAS_NMS:Ljava/lang/String; = "acs_has_nms"

.field private static final ACS_NMS_HOST:Ljava/lang/String; = "acs_nms_host"

.field private static final APP_VER:Ljava/lang/String; = "app_ver"

.field private static final ATS_TOKEN:Ljava/lang/String; = "ats_token"

.field private static final AUTH_ZCODE:Ljava/lang/String; = "auth_zcode"

.field private static final BUFFER_DB_LOADED:Ljava/lang/String; = "buffer_db_loaded"

.field private static final COUNT_USER_INPUT_PHONE_NUMBER:Ljava/lang/String; = "count_user_input_phone_number"

.field private static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final HAS_SHOWN_POPUP_OPT_IN:Ljava/lang/String; = "has_shown_popup_opt_in"

.field private static final HUI_6014_ERR:Ljava/lang/String; = "6014_err"

.field private static final INITIAL_SYNC_STATUS:Ljava/lang/String; = "initial sync status"

.field private static final IS_IMSI_FIXED_FOR_ATT_DATABASE:Ljava/lang/String; = "is_imsi_fixed_for_att_database"

.field private static final IS_NATIVE_MSGAPP_DEFAULT:Ljava/lang/String; = "is_native_message_app_default"

.field private static final LAST_API_CREATE_SERVICE:Ljava/lang/String; = "last_api_create_service"

.field private static final LAST_SCREEN:Ljava/lang/String; = "last_screen"

.field private static final LAST_SCREEN_USER_STOP_BACKUP:Ljava/lang/String; = "last_screen_where_user_stop_backup"

.field private static final MSG_STORE_TOKEN:Ljava/lang/String; = "msg_store_token"

.field private static final NC_HOST:Ljava/lang/String; = "nc_host"

.field private static final NETWORK_OK_TIME:Ljava/lang/String; = "network_is_available_time"

.field private static final NEW_USER_OPT_IN_CASE:Ljava/lang/String; = "new_user_opt_in_case"

.field private static final NMS_HOST:Ljava/lang/String; = "nms_host"

.field private static final NSDS_AUTHORY:Ljava/lang/String; = "com.samsung.ims.nsds.provider"

.field private static final OBJECT_SEARCH_CURSOR:Ljava/lang/String; = "object_search_cursor"

.field private static final OMA_CALLBACK_URL:Ljava/lang/String; = "oma_callback_url"

.field private static final OMA_CHANNELS_CHANNEL_URL:Ljava/lang/String; = "oma_channels_channel_url"

.field private static final OMA_CHANNELS_RESOURCE_URL:Ljava/lang/String; = "oma_channels_resources_url"

.field private static final OMA_CHANNEL_CREATE_TIME:Ljava/lang/String; = "oma_channel_create_lifetime"

.field private static final OMA_CHANNEL_LIFETIME:Ljava/lang/String; = "oma_channel_lifetime"

.field private static final OMA_RETRY_COUNT:Ljava/lang/String; = "oma_retry_count"

.field private static final OMA_SUBSCIRPTION_CHANNEL_DURATION:Ljava/lang/String; = "oma_subscription_channel_duration"

.field private static final OMA_SUBSCIRPTION_RESTART_TOKEN:Ljava/lang/String; = "oma_subscription_restart_token"

.field private static final OMA_SUBSCIRPTION_RESURL:Ljava/lang/String; = "oma_subscription_resurl"

.field private static final OMA_SUBSCIRPTION_TIME:Ljava/lang/String; = "oma_subscription_time"

.field private static final OMA_SUBSCRIPTION_INDEX:Ljava/lang/String; = "oma_subscription_index"

.field private static final PAT:Ljava/lang/String; = "cps_pat"

.field private static final PAT_GENERATE_TIME:Ljava/lang/String; = "pat_generate_time"

.field private static final PREFERENCE_FILE_NAME:Ljava/lang/String; = "cloudmessage"

.field private static final PREFERENCE_MIGRATE_SUCCESS:Ljava/lang/String; = "cmsmigratesuccess"

.field private static final PREFERENCE_USER_DEBUG:Ljava/lang/String; = "cmsuserdebug"

.field private static final PREF_KEY_RETRY_STACK:Ljava/lang/String; = "Retry_Stack"

.field private static final REDIRECT_DOMAIN:Ljava/lang/String; = "redirect_domain"

.field private static final SIM_IMSI:Ljava/lang/String; = "sim_imsi"

.field private static final STEADY_STATE_FLAG:Ljava/lang/String; = "steady_state_flag"

.field private static final TAG:Ljava/lang/String;

.field private static final TBS_REQUIRED:Ljava/lang/String; = "tbs_required"

.field private static final TERM_CONDITION_ID:Ljava/lang/String; = "T&C"

.field private static final USER_CTN:Ljava/lang/String; = "user_ctn_id"

.field private static final USER_CTN_IS_INPUT:Ljava/lang/String; = "is_user_input_ctn"

.field private static final USER_DELETE_ACCOUNT:Ljava/lang/String; = "user_requested_delete_account"

.field private static final USER_OPT_IN_FLAG:Ljava/lang/String; = "user_opt_in_flag"

.field private static final ZCODE_COUNTER:Ljava/lang/String; = "zcode_counter"

.field private static final ZCODE_LAST_REQUEST_ID:Ljava/lang/String; = "zcode_last_request_id"

.field private static isInit:Z

.field private static mContext:Landroid/content/Context;

.field private static mMigrateSuccessPreference:Landroid/content/SharedPreferences;

.field private static mPreferences:Landroid/content/SharedPreferences;

.field private static mUserDebugPreference:Landroid/content/SharedPreferences;

.field private static sInstance:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->sInstance:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    .line 27
    const-class v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isInit:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;
    .locals 1

    .line 126
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->sInstance:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    return-object v0
.end method

.method private getKeyBooleanValue(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 182
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getKeyIntegerValue(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 171
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getKeyLongValue(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 193
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrefEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 142
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 114
    sget-boolean v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isInit:Z

    if-eqz v0, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    sput-object p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    .line 118
    const-string v0, "cloudmessage"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 119
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    const-string v2, "cmsuserdebug"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    .line 120
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    const-string v2, "cmsmigratesuccess"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mMigrateSuccessPreference:Landroid/content/SharedPreferences;

    .line 121
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->initUserDebug()V

    .line 122
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isInit:Z

    .line 123
    return-void
.end method

.method public static initUserDebug()V
    .locals 7

    .line 677
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 678
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string v1, "mUserDebugPreference is null failed to init"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return-void

    .line 681
    :cond_0
    const-string v1, "AMBS_DEBUG"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v1, "app_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, "appId":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v3, "cps_host_name"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "cpsHostName":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v4, "auth_host_name"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 685
    .local v3, "authHostName":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "retry_time"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 686
    .local v4, "timeLine":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v6, "nc_host_name"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 687
    .local v2, "ncHostName":Ljava/lang/String;
    invoke-static {v0, v3, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const/4 v5, 0x1

    sput-boolean v5, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    .line 689
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->setRetryTimeLine(Ljava/lang/String;)V

    .line 690
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "cpsHostName":Ljava/lang/String;
    .end local v2    # "ncHostName":Ljava/lang/String;
    .end local v3    # "authHostName":Ljava/lang/String;
    .end local v4    # "timeLine":Ljava/lang/String;
    goto :goto_0

    .line 691
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->initDefault()V

    .line 692
    sput-boolean v2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    .line 693
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->initRetryTimeLine()V

    .line 695
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cpsHostName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", authHostName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ncHostName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "timeLine="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->debugRetryTimeLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method private saveKeyBooleanValue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 175
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 177
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    return-void
.end method

.method private saveKeyIntegerValue(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 164
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    return-void
.end method

.method private saveKeyLongValue(Ljava/lang/String;J)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 186
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 188
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    return-void
.end method

.method private saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    return-void
.end method

.method public static saveUserDebug()V
    .locals 3

    .line 701
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 702
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUserDebugPreference is null failed to save, debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-void

    .line 705
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 706
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    sget-boolean v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    const-string v2, "AMBS_DEBUG"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 707
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 708
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    const-string v2, "cps_host_name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 709
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    const-string v2, "auth_host_name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 710
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->debugRetryTimeLine:Ljava/lang/String;

    const-string/jumbo v2, "retry_time"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 711
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    const-string v2, "nc_host_name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 712
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 713
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    .line 132
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string v1, "clear all preferences data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    return-void
.end method

.method public clearInvalidUserCtn()V
    .locals 1

    .line 261
    const-string/jumbo v0, "user_ctn_id"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    .line 262
    const-string v0, "is_user_input_ctn"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public clearOMASubscriptionChannelDuration()V
    .locals 1

    .line 566
    const-string v0, "oma_subscription_channel_duration"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public clearOMASubscriptionTime()V
    .locals 1

    .line 552
    const-string v0, "oma_subscription_time"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public getAcsNmsHost()Ljava/lang/String;
    .locals 2

    .line 375
    const-string v0, "acs_nms_host"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAtsToken()Ljava/lang/String;
    .locals 4

    .line 349
    const-string v0, "ats_token"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "atsToken":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "atsToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-object v0
.end method

.method public getAuthZCode()Ljava/lang/String;
    .locals 2

    .line 228
    const-string v0, "auth_zcode"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBufferDbLoaded()Z
    .locals 2

    .line 606
    const-string v0, "buffer_db_loaded"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .line 618
    const-string v0, "device_id"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 620
    sget-object v2, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 621
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    sget-object v2, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string v3, "can\'t get imei from sp and telephonymgr"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-object v1

    .line 625
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveDeviceId(Ljava/lang/String;)V

    .line 628
    :cond_1
    return-object v0
.end method

.method public getGcmTokenFromVsim()Ljava/lang/String;
    .locals 9

    .line 632
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 633
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "content://com.samsung.ims.nsds.provider/devices/push_token"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 634
    .local v7, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 635
    .local v8, "token":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v7

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 636
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 637
    const/4 v2, 0x0

    .line 642
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :cond_0
    return-object v2

    .line 639
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 640
    const-string v2, "device_push_token"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v2

    goto :goto_0

    .line 642
    :cond_2
    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 644
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_2

    .line 635
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "token":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;
    :cond_4
    :goto_1
    throw v2
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 642
    .end local v1    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local v8    # "token":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;
    :catch_0
    move-exception v1

    .line 643
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!Could not get data from db "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_2
    return-object v8
.end method

.method public getIsUserInputCtn()Z
    .locals 2

    .line 283
    const-string v0, "is_user_input_ctn"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastScreen()I
    .locals 2

    .line 329
    const-string v0, "last_screen"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastScreenUserStopBackup()I
    .locals 2

    .line 337
    const-string v0, "last_screen_where_user_stop_backup"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMigrateSuccessFlag()Z
    .locals 3

    .line 668
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string v1, "getMigrateSuccessFlag "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mMigrateSuccessPreference:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 670
    return v1

    .line 672
    :cond_0
    const-string v2, "is_imsi_fixed_for_att_database"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getMsgStoreSessionId()Ljava/lang/String;
    .locals 2

    .line 359
    const-string v0, "msg_store_token"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNcHost()Ljava/lang/String;
    .locals 2

    .line 498
    const-string v0, "nc_host"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkAvailableTime()J
    .locals 3

    .line 654
    const-string v0, "network_is_available_time"

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNewUserOptInCase()I
    .locals 2

    .line 423
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    const-string v1, "new_user_opt_in_case"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNmsHost()Ljava/lang/String;
    .locals 2

    .line 367
    const-string v0, "nms_host"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOMACallBackURL()Ljava/lang/String;
    .locals 2

    .line 522
    const-string v0, "oma_callback_url"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOMAChannelCreateTime()J
    .locals 3

    .line 586
    const-string v0, "oma_channel_create_lifetime"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOMAChannelLifeTime()J
    .locals 3

    .line 576
    const-string v0, "oma_channel_lifetime"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOMAChannelResURL()Ljava/lang/String;
    .locals 2

    .line 506
    const-string v0, "oma_channels_resources_url"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOMAChannelURL()Ljava/lang/String;
    .locals 2

    .line 514
    const-string v0, "oma_channels_channel_url"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOMASSubscriptionRestartToken()Ljava/lang/String;
    .locals 2

    .line 538
    const-string v0, "oma_subscription_restart_token"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOMASubscriptionChannelDuration()I
    .locals 2

    .line 562
    const-string v0, "oma_subscription_channel_duration"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOMASubscriptionIndex()J
    .locals 3

    .line 530
    const-string v0, "oma_subscription_index"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOMASubscriptionResUrl()Ljava/lang/String;
    .locals 2

    .line 594
    const-string v0, "oma_subscription_resurl"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOMASubscriptionTime()J
    .locals 3

    .line 548
    const-string v0, "oma_subscription_time"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOmaRetryCounter()I
    .locals 2

    .line 598
    const-string v0, "oma_retry_count"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRedirectDomain()Ljava/lang/String;
    .locals 2

    .line 383
    const-string/jumbo v0, "redirect_domain"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRetryStackData()Ljava/lang/String;
    .locals 2

    .line 474
    const-string v0, "Retry_Stack"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimImsi()Ljava/lang/String;
    .locals 2

    .line 241
    const-string/jumbo v0, "sim_imsi"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTermConditionId()Ljava/lang/String;
    .locals 2

    .line 216
    const-string v0, "T&C"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalRetryCounter()I
    .locals 3

    .line 461
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const-string/jumbo v1, "retry_total_counter"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUserCtn()Ljava/lang/String;
    .locals 2

    .line 266
    const-string/jumbo v0, "user_ctn_id"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserTbs()Z
    .locals 2

    .line 249
    const-string/jumbo v0, "tbs_required"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUserTelCtn()Ljava/lang/String;
    .locals 3

    .line 272
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "userCtn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getNormalizedTelUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 275
    .local v1, "normalizedUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 279
    .end local v1    # "normalizedUri":Lcom/sec/ims/util/ImsUri;
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public getValidPAT()Ljava/lang/String;
    .locals 8

    .line 393
    const-string v0, "cps_pat"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "res":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "pat_generate_time"

    invoke-direct {p0, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v2

    .line 397
    .local v2, "patGeneratedTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v6, 0x48190800

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 398
    return-object v0

    .line 401
    .end local v2    # "patGeneratedTime":J
    :cond_0
    return-object v1
.end method

.method public getZCodeLastRequestId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 204
    const-string/jumbo v0, "zcode_last_request_id"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasShownPopupOptIn()Z
    .locals 2

    .line 414
    const-string v0, "has_shown_popup_opt_in"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasUserDeleteAccount()Z
    .locals 4

    .line 323
    const-string/jumbo v0, "user_requested_delete_account"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 324
    .local v0, "result":Z
    sget-object v1, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasUserDeleteAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v0
.end method

.method public hasUserOptedIn()Z
    .locals 2

    .line 406
    const-string/jumbo v0, "user_opt_in_flag"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ifSteadyState()Z
    .locals 2

    .line 453
    const-string/jumbo v0, "steady_state_flag"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public increaseUserInputNumberCount()V
    .locals 2

    .line 287
    const-string v0, "count_user_input_phone_number"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v1

    .line 288
    .local v1, "counter":I
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    .line 289
    return-void
.end method

.method public increazeZCodeCounter()V
    .locals 2

    .line 304
    const-string/jumbo v0, "zcode_counter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v1

    .line 305
    .local v1, "counter":I
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    .line 306
    return-void
.end method

.method public isEmptyPref()Z
    .locals 1

    .line 197
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

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

.method public isHUI6014Err()Z
    .locals 2

    .line 441
    const-string v0, "6014_err"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLastAPIRequestCreateAccount()Z
    .locals 2

    .line 432
    const-string v0, "last_api_create_service"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNoMoreChanceUserInputNumber()Z
    .locals 3

    .line 298
    const-string v0, "count_user_input_phone_number"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v0

    .line 300
    .local v0, "counter":I
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isZCodeMax2Tries()Z
    .locals 3

    .line 309
    const-string/jumbo v0, "zcode_counter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 153
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    return-void
.end method

.method public removeUserInputNumberCount()V
    .locals 2

    .line 292
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 293
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "count_user_input_phone_number"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 295
    return-void
.end method

.method public removeZCodeCounter()V
    .locals 2

    .line 313
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 314
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "zcode_counter"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 315
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 316
    return-void
.end method

.method public saveAcsNmsHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "atsToken"    # Ljava/lang/String;

    .line 371
    const-string v0, "acs_nms_host"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public saveAppVer(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .line 212
    const-string v0, "app_ver"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public saveAtsToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "atsToken"    # Ljava/lang/String;

    .line 345
    const-string v0, "ats_token"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public saveAuthZCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "authZCode"    # Ljava/lang/String;

    .line 224
    const-string v0, "auth_zcode"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public saveBufferDbLoaded(Z)V
    .locals 1
    .param p1, "isDBLoaded"    # Z

    .line 610
    const-string v0, "buffer_db_loaded"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    .line 611
    return-void
.end method

.method public saveDeviceId(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 614
    const-string v0, "device_id"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public saveIfHUI6014Err(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 445
    const-string v0, "6014_err"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    .line 446
    return-void
.end method

.method public saveIfHasShownPopupOptIn(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 418
    const-string v0, "has_shown_popup_opt_in"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    .line 419
    return-void
.end method

.method public saveIfSteadyState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 449
    const-string/jumbo v0, "steady_state_flag"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    .line 450
    return-void
.end method

.method public saveInitialSyncStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .line 483
    const-string v0, "initial sync status"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    .line 484
    return-void
.end method

.method public saveLastApiRequestCreateAccount(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 436
    const-string v0, "last_api_create_service"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    .line 437
    return-void
.end method

.method public saveLastRetryTime(J)V
    .locals 1
    .param p1, "retryTimes"    # J

    .line 470
    const-string v0, "last retry time"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    .line 471
    return-void
.end method

.method public saveLastScreen(I)V
    .locals 1
    .param p1, "screenId"    # I

    .line 333
    const-string v0, "last_screen"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    .line 334
    return-void
.end method

.method public saveLastScreenUserStopBackup(I)V
    .locals 1
    .param p1, "screenId"    # I

    .line 341
    const-string v0, "last_screen_where_user_stop_backup"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    .line 342
    return-void
.end method

.method public saveMigrateSuccessFlag(Z)V
    .locals 3
    .param p1, "isSuccess"    # Z

    .line 658
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveMigrateSuccess is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mMigrateSuccessPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 660
    return-void

    .line 662
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 663
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v1, "is_imsi_fixed_for_att_database"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 664
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 665
    return-void
.end method

.method public saveMsgStoreSessionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "atsToken"    # Ljava/lang/String;

    .line 355
    const-string v0, "msg_store_token"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public saveNativeMsgAppIsDefault(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 457
    const-string v0, "is_native_message_app_default"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    .line 458
    return-void
.end method

.method public saveNcHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "ncHost"    # Ljava/lang/String;

    .line 494
    const-string v0, "nc_host"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public saveNetworkAvailableTime(J)V
    .locals 2
    .param p1, "time"    # J

    .line 649
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v1, "YYYY-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 650
    .local v0, "sdf":Landroid/icu/text/SimpleDateFormat;
    const-string v1, "network_is_available_time"

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    .line 651
    return-void
.end method

.method public saveNewUserOptInCase(I)V
    .locals 1
    .param p1, "state"    # I

    .line 427
    const-string v0, "new_user_opt_in_case"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    .line 428
    return-void
.end method

.method public saveNmsHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "atsToken"    # Ljava/lang/String;

    .line 363
    const-string v0, "nms_host"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public saveOMACallBackURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "Url"    # Ljava/lang/String;

    .line 518
    const-string v0, "oma_callback_url"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public saveOMAChannelCreateTime(J)V
    .locals 1
    .param p1, "time"    # J

    .line 581
    const-string v0, "oma_channel_create_lifetime"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    .line 582
    return-void
.end method

.method public saveOMAChannelLifeTime(J)V
    .locals 1
    .param p1, "time"    # J

    .line 571
    const-string v0, "oma_channel_lifetime"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    .line 572
    return-void
.end method

.method public saveOMAChannelResURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "Url"    # Ljava/lang/String;

    .line 502
    const-string v0, "oma_channels_resources_url"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public saveOMAChannelURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "Url"    # Ljava/lang/String;

    .line 510
    const-string v0, "oma_channels_channel_url"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public saveOMASubscriptionChannelDuration(I)V
    .locals 1
    .param p1, "time"    # I

    .line 557
    const-string v0, "oma_subscription_channel_duration"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    .line 558
    return-void
.end method

.method public saveOMASubscriptionIndex(J)V
    .locals 1
    .param p1, "index"    # J

    .line 526
    const-string v0, "oma_subscription_index"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    .line 527
    return-void
.end method

.method public saveOMASubscriptionResUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 590
    const-string v0, "oma_subscription_resurl"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public saveOMASubscriptionRestartToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .line 534
    const-string v0, "oma_subscription_restart_token"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public saveOMASubscriptionTime(J)V
    .locals 1
    .param p1, "time"    # J

    .line 543
    const-string v0, "oma_subscription_time"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    .line 544
    return-void
.end method

.method public saveObjectSearchCursor(Ljava/lang/String;)V
    .locals 1
    .param p1, "cursor"    # Ljava/lang/String;

    .line 489
    const-string v0, "object_search_cursor"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public saveOmaRetryCounter(I)V
    .locals 1
    .param p1, "retryCount"    # I

    .line 602
    const-string v0, "oma_retry_count"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    .line 603
    return-void
.end method

.method public savePATAndTime(Ljava/lang/String;)V
    .locals 3
    .param p1, "pat"    # Ljava/lang/String;

    .line 387
    const-string v0, "cps_pat"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "pat_generate_time"

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    .line 389
    return-void
.end method

.method public saveRedirectDomain(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .line 379
    const-string/jumbo v0, "redirect_domain"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public saveRetryStackData(Ljava/lang/String;)V
    .locals 1
    .param p1, "retryStackData"    # Ljava/lang/String;

    .line 478
    const-string v0, "Retry_Stack"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public saveSimImsi(Ljava/lang/String;)V
    .locals 1
    .param p1, "simImsi"    # Ljava/lang/String;

    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    return-void

    .line 236
    :cond_0
    const-string/jumbo v0, "sim_imsi"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public saveTermConditionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "tcId"    # Ljava/lang/String;

    .line 220
    const-string v0, "T&C"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public saveTotalRetryCounter(I)V
    .locals 1
    .param p1, "retryTimes"    # I

    .line 466
    const-string/jumbo v0, "retry_total_counter"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    .line 467
    return-void
.end method

.method public saveUserCtn(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "userCtn"    # Ljava/lang/String;
    .param p2, "isUserInputCtn"    # Z

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    return-void

    .line 256
    :cond_0
    const-string/jumbo v0, "user_ctn_id"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v0, "is_user_input_ctn"

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    .line 258
    return-void
.end method

.method public saveUserDeleteAccount(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 319
    const-string/jumbo v0, "user_requested_delete_account"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    .line 320
    return-void
.end method

.method public saveUserOptedIn(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 410
    const-string/jumbo v0, "user_opt_in_flag"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    .line 411
    return-void
.end method

.method public saveUserTbsRquired(Z)V
    .locals 1
    .param p1, "isTbsRequired"    # Z

    .line 245
    const-string/jumbo v0, "tbs_required"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    .line 246
    return-void
.end method

.method public saveZCodeLastRequestId(Ljava/lang/String;)V
    .locals 1
    .param p1, "lastRequestId"    # Ljava/lang/String;

    .line 208
    const-string/jumbo v0, "zcode_last_request_id"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method
