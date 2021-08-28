.class public Lcom/sec/internal/ims/cmstore/helper/DebugFlag;
.super Ljava/lang/Object;
.source "DebugFlag.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "app_id"

.field public static final AUTH_HOST_NAME:Ljava/lang/String; = "auth_host_name"

.field public static final CPS_HOST_NAME:Ljava/lang/String; = "cps_host_name"

.field public static final DEBUG_FLAG:Ljava/lang/String; = "AMBS_DEBUG"

.field public static DEBUG_RETRY_TIMELINE_FLAG:Z = false

.field public static final ENABLE_ADVANCE_DEBUG:Z = false

.field public static final NC_HOST_NAME:Ljava/lang/String; = "nc_host_name"

.field public static final RETRY_TIME:Ljava/lang/String; = "retry_time"

.field public static debugRetryTimeLine:Ljava/lang/String;

.field protected static mRetrySchedule:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "10000,10000,10000,10000,10000"

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->debugRetryTimeLine:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->mRetrySchedule:Ljava/util/Map;

    .line 27
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->initRetryTimeLine()V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRetryTimeLine(I)I
    .locals 2
    .param p0, "counter"    # I

    .line 51
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->mRetrySchedule:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->mRetrySchedule:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 54
    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public static initRetryTimeLine()V
    .locals 4

    .line 31
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->mRetrySchedule:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 34
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->mRetrySchedule:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static setRetryTimeLine(Ljava/lang/String;)V
    .locals 7
    .param p0, "timeValue"    # Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->mRetrySchedule:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 40
    sput-object p0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->debugRetryTimeLine:Ljava/lang/String;

    .line 41
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "times":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 44
    aget-object v2, v0, v1

    .line 45
    .local v2, "time":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 46
    .local v3, "eachTime":I
    sget-object v4, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->mRetrySchedule:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .end local v2    # "time":Ljava/lang/String;
    .end local v3    # "eachTime":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
