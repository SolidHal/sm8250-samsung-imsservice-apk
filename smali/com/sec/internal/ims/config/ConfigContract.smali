.class public Lcom/sec/internal/ims/config/ConfigContract;
.super Ljava/lang/Object;
.source "ConfigContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/ConfigContract$BUILD;
    }
.end annotation


# static fields
.field public static final PATH_TABLE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STORAGE_DEFAULT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    .line 38
    const-string/jumbo v1, "root/vers/version"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    const-string v1, "backup/vers/version"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    const-string/jumbo v1, "root/vers/validity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    const-string v1, "info/completed"

    const-string v3, "false"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    const-string v1, "info/tc_popup_user_accept"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    const-string v1, "info/next_autoconfig_time"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    const-string v1, "info/start_msisdn_timer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    const-string/jumbo v1, "root/token/token"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    const-string/jumbo v1, "root/services/rcsdisabledstate"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    const-string/jumbo v1, "root/policy/sms_port"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    const-string/jumbo v1, "root/eap_aka"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    const-string/jumbo v1, "root/eap_aka/eap_aka_challenge"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    const-string/jumbo v1, "root/serviceproviderext/spgurl"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    const-string/jumbo v1, "root/serviceproviderext/params-url"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    .line 61
    const-string/jumbo v1, "root/vers/"

    const-string/jumbo v2, "version"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 62
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v2, "validity"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 63
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/token/"

    const-string/jumbo v2, "token"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 66
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v1, "info/msisdn/"

    const-string/jumbo v2, "skip_count"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 67
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v2, "msgui_display"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 70
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/0/"

    const-string v2, "home_network_domain_name"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 72
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v2, "private_user_identity"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 74
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v2, "keep_alive_enabled"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 78
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/0/ext/"

    const-string v2, "maxsizeimageshare"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 80
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v2, "maxtimevideoshare"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 82
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v2, "q-value"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 84
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v2, "inturlfmt"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 86
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v2, "naturlfmt"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 88
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v2, "rcsVolteSingleRegistration"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 90
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v2, "endUserConfReqId"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 92
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v2, "uuid_Value"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 96
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/0/appauth/"

    const-string v2, "UserName"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 98
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v2, "UserPwd"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 100
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v2, "realm"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 104
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/services/"

    const-string v2, "SupportedRCSVersions"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 106
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v2, "SupportedRCSProfileVersions"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 108
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v2, "rcsState"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 110
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v3, "rcsDisabledState"

    invoke-static {v1, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 112
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "presencePrfl"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 114
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ChatAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 116
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "GroupChatAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 118
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 120
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "standaloneMsgAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 122
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "geolocPullAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 124
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "geolocPushAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 126
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "vsAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 128
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "isAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 130
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "rcsIPVoiceCallAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 132
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "rcsIPVideoCallAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 134
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "IR94VideoAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 136
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "allowRCSExtensions"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 138
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "composerAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 140
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "sharedMapAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 142
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "sharedSketchAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 144
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "postCallAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 148
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/services/ext/dataoff/"

    const-string/jumbo v4, "rcsMessagingDataOff"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 150
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "fileTransferDataOff"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 152
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "smsoIPDataOff"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 154
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "mmsDataOff"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 156
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "contentShareDataOff"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 158
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "preAndPostCallDataOff"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 160
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "volteDataOff"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 162
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "IPVideoCallDataOff"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 164
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "provisioningDataOff"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 166
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "syncDataOff"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 170
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/capdiscovery/"

    const-string v4, "disableInitialAddressBookScan"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 172
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "pollingperiod"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 174
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "pollingrate"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 176
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "pollingrateperiod"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 178
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "capinfoexpiry"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 180
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "nonRCScapInfoExpiry"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 182
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "defaultdisc"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 184
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "capDiscCommonStack"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 186
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "maxentriesinlist"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 188
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/capdiscovery/ext/joyn/"

    const-string v4, "msgcapvalidity"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 190
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/capdiscovery/ext/joyn/"

    const-string v4, "lastseenactive"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 194
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/presence/"

    const-string v4, "PublishTimer"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 196
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "source-throttlepublish"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 198
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "max-number-ofsubscriptions-inpresence-list"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 200
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "RLS-URI"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 202
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/presence/location/"

    const-string v4, "locinfomaxvalidtime"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 204
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/presence/location/"

    const-string v4, "client-obj-datalimit"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 208
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/im/"

    const-string v4, "imMsgTech"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 210
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "imcapalwayson"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 212
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "imWarnSF"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 214
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "GroupChatFullStandFwd"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 216
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "GroupChatOnlyFStandFwd"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 218
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "smsfallbackauth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 220
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "imCapNonRCS"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 222
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "imwarniw"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 224
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "autaccept"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 226
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "imsessionstart"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 228
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "autacceptgroupchat"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 230
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "firstMessageInvite"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 232
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "TimerIdle"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 234
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "maxConcurrentSession"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 236
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "multiMediaChat"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 238
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "MaxSize"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 240
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "maxsize1to1"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 242
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "maxsize1tom"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 244
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftWarnSize"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 246
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "MaxSizeFileTr"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 248
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "MaxSizeFileTrIncoming"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 250
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftThumb"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 252
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftStAndFwEnabled"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 254
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftCapalwaysON"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 256
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftautaccept"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 258
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftHTTPCSURI"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 260
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftHTTPDLURI"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 262
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftHTTPCSUser"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 264
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftHTTPCSPwd"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 266
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftDefaultMech"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 268
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftHTTPFallback"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 270
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "pres-srv-cap"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 272
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "deferred-msg-func-uri"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 274
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "max_adhoc_group_size"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 276
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "conf-fcty-uri"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 278
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "exploder-uri"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 280
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "mass-fcty-uri"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 282
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ChatRevokeTimer"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 284
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftHTTPftWarnSize"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 286
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftHTTPMaxSizeFileTr"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 288
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftHTTPMaxSizeFileTrIncoming"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 290
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "max_adhoc_open_group_size"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 292
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/im/ext/"

    const-string v4, "cbftHTTPCSURI"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 294
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "MaxSizeExtraFileTr"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 296
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftHTTPExtraCSURI"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 298
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "MaxIMDNAggregation"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 302
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/cpm/standalonemsg/"

    const-string v4, "MaxSizeStandalone"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 304
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/messaging/standalonemsg/"

    const-string v4, "MaxSize"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 306
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/messaging/standalonemsg/"

    const-string v4, "SwitchoverSize"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 310
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/cpm/messagestore/"

    const-string v4, "Url"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 312
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "Url"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 314
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "root/application/1/cpm/"

    const-string v5, "messagestore/UserName"

    invoke-static {v4, v5}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 316
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "root/application/1/cpm/"

    const-string v5, "messagestore/UserPwd"

    invoke-static {v4, v5}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 318
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "EventRpting"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 320
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "AuthArchive"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 322
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "SyncTimer"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 324
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "DataConnectionSyncTimer"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 326
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "SMSStore"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 328
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "MMSStore"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 332
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/other/"

    const-string/jumbo v4, "warnsizeimageshare"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 334
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "extensionsMaxMSRPSize"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 336
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "callComposerTimerIdle"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 341
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/xdms/"

    const-string/jumbo v4, "xcaprooturi"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 345
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/other/transportproto/"

    const-string/jumbo v4, "psmedia"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 347
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "wifimedia"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 349
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "pssignalling"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 351
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "wifisignalling"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 353
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "psrtmedia"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 355
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "pssignallingroaming"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 357
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "psmediaroaming"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 359
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "psrtmediaroaming"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 361
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "wifirtmedia"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 365
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/ux/"

    const-string v4, "messagingUX"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 367
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "userAliasAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 369
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "spamNotificationText"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 371
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "tokenLinkNotificationText"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 373
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "unavailableEndpointText"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 375
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "videoAndEnCallUX"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 377
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "IR51SwitchUx"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 379
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "msgFBDefault"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 381
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftFBDefault"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 383
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "callLogsBearerDiffer"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 385
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "allowEnrichedChatbotSearchDefault"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 389
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/clientcontrol/"

    const-string/jumbo v4, "reconnectGuardTimer"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 391
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "cfsTrigger"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 393
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "max1toManyRecipients"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 395
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "1toManySelectedTech"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 397
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "displayNotificationSwitch"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 399
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftMax1ToManyRecipients"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 401
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v4, "serviceAvailabilityInfoExpiry"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 403
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ftHTTPCapAlwaysOn"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 407
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/messaging/chatbot/"

    const-string v4, "ChatbotDirectory"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 409
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "BotinfoFQDNRoot"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 411
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ChatbotBlacklist"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 413
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "MsgHistorySelectable"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 415
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "SpecificChatbotsList"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 417
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "IdentityInEnrichedSearch"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 419
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "PrivacyDisable"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 421
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "ChatbotMsgTech"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 425
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/messaging/messagestore/"

    const-string v4, "MsgStoreUrl"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 427
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "MsgStoreNotifUrl"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 429
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "MsgStoreAuth"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 431
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "MsgStoreUserName"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 433
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string v4, "MsgStoreUserPwd"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 437
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/messaging/plugins/"

    const-string v4, "catalogURI"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 441
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/serviceproviderext/"

    const-string v4, "fthttpGroupChat"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 443
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/serviceproviderext/chatbot/"

    const-string v4, "Username"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 445
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/application/1/serviceproviderext/chatbot/"

    const-string v4, "Password"

    invoke-static {v1, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 449
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/services/"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 450
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/services/"

    invoke-static {v1, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 451
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/serviceproviderext/"

    const-string/jumbo v2, "spgUrl"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 452
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "root/serviceproviderext/"

    const-string/jumbo v2, "params-url"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 453
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 457
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "fullpath":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    return-object v0
.end method
