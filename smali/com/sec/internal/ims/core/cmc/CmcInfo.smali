.class public Lcom/sec/internal/ims/core/cmc/CmcInfo;
.super Ljava/lang/Object;
.source "CmcInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;
    }
.end annotation


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final ACTIVATION:Ljava/lang/String; = "activation"

.field public static final CALL_FORKING_ENABLED:Ljava/lang/String; = "call_forking_enabled"

.field public static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field public static final HAS_SD:Ljava/lang/String; = "has_sd"

.field public static final LINE_ID:Ljava/lang/String; = "line_id"

.field public static final LINE_IMPU:Ljava/lang/String; = "line_impu"

.field public static final LINE_OWNER_DEVICE_ID:Ljava/lang/String; = "line_owner_device_id"

.field public static final LINE_SLOT_INDEX:Ljava/lang/String; = "line_slot_index"

.field public static final NETWORK_PREF:Ljava/lang/String; = "network_pref"

.field public static final OOBE:Ljava/lang/String; = "oobe"

.field public static final PCSCF_ADDR_LIST:Ljava/lang/String; = "pcscf_addr_list"

.field public static final SA_SERVER_URL:Ljava/lang/String; = "sa_server_url"

.field private static mTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessToken:Ljava/lang/String;

.field mActivation:Z

.field mCallforkingEnabled:Z

.field mDeviceId:Ljava/lang/String;

.field mDeviceType:Ljava/lang/String;

.field mHasSd:Z

.field mLineId:Ljava/lang/String;

.field mLineImpu:Ljava/lang/String;

.field mLineOwnerDeviceId:Ljava/lang/String;

.field mLineSlotIndex:I

.field mNetworkPref:I

.field mOobe:Z

.field mPcscfAddrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSaServerUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    .line 54
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v2, "activation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->INTEGER:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v2, "line_slot_index"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v2, "device_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v2, "access_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v2, "line_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v2, "line_owner_device_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v2, "line_impu"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string/jumbo v2, "sa_server_url"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string/jumbo v2, "pcscf_addr_list"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v2, "call_forking_enabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v2, "has_sd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->INTEGER:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v2, "network_pref"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string/jumbo v2, "oobe"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mOobe:Z

    .line 21
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mActivation:Z

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mCallforkingEnabled:Z

    .line 32
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mHasSd:Z

    .line 33
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    .line 72
    return-void
.end method

.method public static getInfoNameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static isDumpPrintAvailable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    return v1

    .line 82
    :cond_0
    const-string v0, "device_type"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    .line 83
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->INTEGER:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 82
    :cond_2
    return v1
.end method


# virtual methods
.method public checkValidWithName(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 157
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 158
    return v1

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValueWithName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 162
    .local v0, "value":Ljava/lang/Object;
    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType:[I

    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 170
    return v4

    .line 167
    :cond_1
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 168
    .local v2, "listValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    move v1, v4

    :cond_2
    return v1

    .line 164
    .end local v2    # "listValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_3
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 165
    .local v2, "strValue":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v4

    :cond_4
    return v1
.end method

.method public compareWithName(Ljava/lang/String;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "targetInfo"    # Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 122
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 123
    return v1

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValueWithName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    .local v0, "src":Ljava/lang/Object;
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValueWithName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, "target":Ljava/lang/Object;
    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType:[I

    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v5, 0x2

    if-eq v3, v5, :cond_7

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    .line 152
    return v1

    .line 142
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 143
    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 144
    .local v3, "srcList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v5, v2

    check-cast v5, Ljava/util/List;

    .line 145
    .local v5, "targetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 146
    invoke-interface {v3, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 147
    return v4

    .line 150
    .end local v3    # "srcList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "targetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    if-nez v0, :cond_3

    if-nez v2, :cond_3

    move v1, v4

    :cond_3
    return v1

    .line 135
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 136
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, "srcStr":Ljava/lang/String;
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 138
    .local v3, "targetStr":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 140
    .end local v1    # "srcStr":Ljava/lang/String;
    .end local v3    # "targetStr":Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_6

    if-nez v2, :cond_6

    move v1, v4

    :cond_6
    return v1

    .line 133
    :cond_7
    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v5, v2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v3, v5, :cond_8

    move v1, v4

    :cond_8
    return v1

    .line 131
    :cond_9
    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object v5, v2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v3, v5, :cond_a

    move v1, v4

    :cond_a
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 89
    return v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 92
    return v0

    .line 94
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 95
    .local v1, "cmcInfo":Lcom/sec/internal/ims/core/cmc/CmcInfo;
    iget-boolean v2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mOobe:Z

    iget-boolean v3, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mOobe:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mActivation:Z

    iget-boolean v3, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mActivation:Z

    if-ne v2, v3, :cond_7

    iget v2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    iget v3, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    if-eq v2, v3, :cond_2

    goto/16 :goto_2

    .line 99
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mHasSd:Z

    iget-boolean v3, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mHasSd:Z

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    iget v3, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mCallforkingEnabled:Z

    iget-boolean v3, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mCallforkingEnabled:Z

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 112
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v2, "newPcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v3, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 115
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 118
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_5
    :goto_0
    return v0

    .line 109
    .end local v2    # "newPcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    return v0

    .line 97
    :cond_7
    :goto_2
    return v0
.end method

.method public getValueWithName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "activation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "line_slot_index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "call_forking_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "line_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "device_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "oobe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "network_pref"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "pcscf_addr_list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_8
    const-string/jumbo v0, "sa_server_url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_9
    const-string v0, "has_sd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_a
    const-string v0, "device_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_b
    const-string v0, "line_impu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_c
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_d
    const-string v0, "line_owner_device_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 190
    const/4 v0, 0x0

    return-object v0

    .line 189
    :pswitch_0
    iget v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 188
    :pswitch_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mHasSd:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 187
    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mCallforkingEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 186
    :pswitch_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    return-object v0

    .line 185
    :pswitch_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    return-object v0

    .line 184
    :pswitch_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    return-object v0

    .line 183
    :pswitch_6
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    return-object v0

    .line 182
    :pswitch_7
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    return-object v0

    .line 181
    :pswitch_8
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    return-object v0

    .line 180
    :pswitch_9
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    return-object v0

    .line 179
    :pswitch_a
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    return-object v0

    .line 178
    :pswitch_b
    iget v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 177
    :pswitch_c
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mActivation:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 176
    :pswitch_d
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mOobe:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7dca4d33 -> :sswitch_d
        -0x7391c8a2 -> :sswitch_c
        -0x6b12bc6c -> :sswitch_b
        -0x5bf6507d -> :sswitch_a
        -0x48fb5dea -> :sswitch_9
        -0x1cc64afc -> :sswitch_8
        -0xa84dbd0 -> :sswitch_7
        -0x12ad26c -> :sswitch_6
        0x342223 -> :sswitch_5
        0x180aba4 -> :sswitch_4
        0xa8b4d46 -> :sswitch_3
        0x332ee201 -> :sswitch_2
        0x47b3647c -> :sswitch_1
        0x79aa8116 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, ", "

    .line 199
    .local v1, "COMMA":Ljava/lang/String;
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mTypeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 201
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValueWithName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 205
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 207
    :cond_1
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
