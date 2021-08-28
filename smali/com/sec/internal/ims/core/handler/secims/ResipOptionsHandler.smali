.class public Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;
.super Lcom/sec/internal/ims/core/handler/OptionsHandler;
.source "ResipOptionsHandler.java"


# static fields
.field public static final EVENT_OPTIONS_RECEIVED_NOTIFY:I = 0x66

.field public static final EVENT_OPTIONS_REQ_RESPONSE:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "ResipOptionsHandler"

.field static mFeatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCmcRegistrant:Lcom/sec/internal/helper/Registrant;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mP2pRegistrant:Lcom/sec/internal/helper/Registrant;

.field private mRegistrant:Lcom/sec/internal/helper/Registrant;

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    .line 57
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 72
    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 71
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 154
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/OptionsHandler;-><init>(Landroid/os/Looper;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 94
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mCmcRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 95
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mP2pRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 155
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 157
    return-void
.end method

.method private getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v0
.end method

.method private getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 1
    .param p1, "regId"    # I

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v0
.end method

.method private handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 3
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 242
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v0

    const-string v1, "ResipOptionsHandler"

    const/16 v2, 0x3a99

    if-eq v0, v2, :cond_0

    .line 248
    const-string v0, "handleNotify(): unexpected id"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :cond_0
    const-string v0, "handleNotify(), NOTIFY_OPTIONS_RECEIVED."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->handleOptionsReceived(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 246
    nop

    .line 250
    :goto_0
    return-void
.end method

.method private handleOptionsReceived(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 35
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 253
    move-object/from16 v0, p0

    const-string v1, "ResipOptionsHandler"

    const-string v2, "handleOptionsReceived()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_0

    .line 255
    const-string v2, "Invalid notify"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void

    .line 260
    :cond_0
    const-wide/16 v2, 0x0

    .line 262
    .local v2, "FeatureToCaps":J
    const/4 v4, 0x0

    .line 263
    .local v4, "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    const/4 v5, 0x0

    .line 264
    .local v5, "phoneId":I
    const/4 v6, 0x0

    .line 265
    .local v6, "index":I
    new-instance v7, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;

    invoke-direct {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;-><init>()V

    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;

    .line 266
    .local v7, "optionsReceivedInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->remoteUri()Ljava/lang/String;

    move-result-object v9

    .line 267
    .local v9, "remoteUri":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->isResponse()Z

    move-result v15

    .line 268
    .local v15, "isResponse":Z
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->success()Z

    move-result v13

    .line 269
    .local v13, "success":Z
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->reason()I

    move-result v14

    .line 270
    .local v14, "error":I
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->sessionId()J

    move-result-wide v10

    long-to-int v12, v10

    .line 271
    .local v12, "sessionId":I
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->txId()Ljava/lang/String;

    move-result-object v11

    .line 272
    .local v11, "txId":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->extFeature()Ljava/lang/String;

    move-result-object v10

    .line 273
    .local v10, "extFeature":Ljava/lang/String;
    const/16 v16, 0x0

    .line 274
    .local v16, "isTokenUsed":Z
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->isChatbotParticipant()Z

    move-result v21

    .line 275
    .local v21, "isChatbotParticipant":Z
    move-wide/from16 v17, v2

    .end local v2    # "FeatureToCaps":J
    .local v17, "FeatureToCaps":J
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->isCmcCheck()Z

    move-result v2

    .line 276
    .local v2, "isCmcCheck":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v4

    .end local v4    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .local v22, "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    const-string v4, "handleOptionsReceived: isResponse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "txId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "extfeature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isCmcCheck: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->tagsLength()I

    move-result v3

    .line 280
    .local v3, "tagLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v5

    .end local v5    # "phoneId":I
    .local v19, "phoneId":I
    const-string v5, "handleOptionsReceived: tagLength "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-eqz v3, :cond_4

    .line 284
    const/4 v4, 0x0

    move v6, v4

    move-wide/from16 v4, v17

    .end local v17    # "FeatureToCaps":J
    .local v4, "FeatureToCaps":J
    :goto_0
    if-ge v6, v3, :cond_3

    .line 285
    invoke-virtual {v7, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->tags(I)I

    move-result v17

    .line 286
    .local v17, "feature":I
    sget-object v18, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 287
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    move/from16 v24, v3

    .end local v3    # "tagLength":I
    .local v24, "tagLength":I
    move-object/from16 v3, v23

    check-cast v3, Ljava/lang/Integer;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    or-long v4, v4, v25

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleOptionsReceived: key = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_1
    move-object/from16 v8, p1

    move/from16 v3, v24

    goto :goto_1

    .line 286
    .end local v24    # "tagLength":I
    .restart local v3    # "tagLength":I
    :cond_2
    move/from16 v24, v3

    .line 284
    .end local v3    # "tagLength":I
    .end local v17    # "feature":I
    .restart local v24    # "tagLength":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, p1

    goto :goto_0

    .line 293
    .end local v24    # "tagLength":I
    .restart local v3    # "tagLength":I
    :cond_3
    move/from16 v24, v3

    .end local v3    # "tagLength":I
    .restart local v24    # "tagLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleOptionsReceived: received tags "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 283
    .end local v4    # "FeatureToCaps":J
    .end local v24    # "tagLength":I
    .restart local v3    # "tagLength":I
    .local v17, "FeatureToCaps":J
    :cond_4
    move/from16 v24, v3

    .end local v3    # "tagLength":I
    .restart local v24    # "tagLength":I
    move-wide/from16 v4, v17

    .line 296
    .end local v17    # "FeatureToCaps":J
    .restart local v4    # "FeatureToCaps":J
    :goto_2
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v3

    .line 297
    .local v3, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v3, v12}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 298
    invoke-interface {v3, v12}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v8

    .end local v19    # "phoneId":I
    .local v8, "phoneId":I
    goto :goto_3

    .line 300
    .end local v8    # "phoneId":I
    .restart local v19    # "phoneId":I
    :cond_5
    const-string v8, "handleOptionsReceived: uaHandle is invalid "

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v8, v19

    .line 302
    .end local v19    # "phoneId":I
    .restart local v8    # "phoneId":I
    :goto_3
    move-object/from16 v23, v3

    .end local v3    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .local v23, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v6

    .end local v6    # "index":I
    .local v25, "index":I
    const-string v6, "handleOptionsReceived(), sessionId = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v8, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    .line 305
    .local v3, "generator":Lcom/sec/internal/ims/util/UriGenerator;
    if-nez v3, :cond_6

    .line 306
    const-string v6, "UriGenerator is null. IMS URIs won\'t be normalized!"

    invoke-static {v1, v8, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    :cond_6
    invoke-static {v9}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    .line 309
    .local v6, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v3, :cond_7

    .line 310
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    .line 313
    :cond_7
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v26, v17

    .line 314
    .local v26, "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x0

    move-object/from16 v27, v9

    move/from16 v9, v17

    .local v9, "i":I
    .local v27, "remoteUri":Ljava/lang/String;
    :goto_4
    move-object/from16 v17, v10

    .end local v10    # "extFeature":Ljava/lang/String;
    .local v17, "extFeature":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->pAssertedIdLength()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 315
    invoke-virtual {v7, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->pAssertedId(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v26

    .end local v26    # "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v10, v17

    move-object/from16 v0, p0

    goto :goto_4

    .end local v0    # "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, v26

    .line 320
    .end local v9    # "i":I
    .end local v26    # "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashSet;

    const/high16 v10, 0x3f800000    # 1.0f

    move/from16 v26, v2

    .end local v2    # "isCmcCheck":Z
    .local v26, "isCmcCheck":Z
    const/4 v2, 0x2

    invoke-direct {v9, v2, v10}, Ljava/util/HashSet;-><init>(IF)V

    .line 321
    .local v9, "pAssertedIdSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move/from16 v2, v16

    .end local v16    # "isTokenUsed":Z
    .local v2, "isTokenUsed":Z
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v28, v0

    .end local v0    # "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v28, "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    .line 322
    .local v0, "assertedId":Ljava/lang/String;
    move-object/from16 v16, v10

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    .line 323
    .local v10, "parsedUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v10, :cond_d

    .line 324
    if-nez v2, :cond_a

    if-eqz v21, :cond_a

    move-object/from16 v18, v11

    .end local v11    # "txId":Ljava/lang/String;
    .local v18, "txId":Ljava/lang/String;
    const-string/jumbo v11, "tk"

    invoke-virtual {v10, v11}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_9

    invoke-virtual {v10, v11}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v19, v12

    .end local v12    # "sessionId":I
    .local v19, "sessionId":I
    const-string v12, "on"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 325
    const/4 v2, 0x1

    goto :goto_6

    .line 324
    .end local v19    # "sessionId":I
    .restart local v12    # "sessionId":I
    :cond_9
    move/from16 v19, v12

    .end local v12    # "sessionId":I
    .restart local v19    # "sessionId":I
    goto :goto_6

    .end local v18    # "txId":Ljava/lang/String;
    .end local v19    # "sessionId":I
    .restart local v11    # "txId":Ljava/lang/String;
    .restart local v12    # "sessionId":I
    :cond_a
    move-object/from16 v18, v11

    move/from16 v19, v12

    .line 327
    .end local v11    # "txId":Ljava/lang/String;
    .end local v12    # "sessionId":I
    .restart local v18    # "txId":Ljava/lang/String;
    .restart local v19    # "sessionId":I
    :cond_b
    :goto_6
    if-eqz v3, :cond_c

    .line 328
    invoke-virtual {v3, v10}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    .line 330
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "adding "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " to PAssertedIdSet"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v8, v11}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 331
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 333
    .end local v18    # "txId":Ljava/lang/String;
    .end local v19    # "sessionId":I
    .restart local v11    # "txId":Ljava/lang/String;
    .restart local v12    # "sessionId":I
    :cond_d
    move-object/from16 v18, v11

    move/from16 v19, v12

    .end local v11    # "txId":Ljava/lang/String;
    .end local v12    # "sessionId":I
    .restart local v18    # "txId":Ljava/lang/String;
    .restart local v19    # "sessionId":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "parsing P-Asserted-Identity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " returned null"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v8, v11}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 336
    .end local v0    # "assertedId":Ljava/lang/String;
    .end local v10    # "parsedUri":Lcom/sec/ims/util/ImsUri;
    :goto_7
    move-object/from16 v10, v16

    move-object/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v0, v28

    goto/16 :goto_5

    .line 337
    .end local v18    # "txId":Ljava/lang/String;
    .end local v19    # "sessionId":I
    .end local v28    # "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "txId":Ljava/lang/String;
    .restart local v12    # "sessionId":I
    :cond_e
    move-object/from16 v28, v0

    move-object/from16 v18, v11

    move/from16 v19, v12

    .end local v0    # "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "txId":Ljava/lang/String;
    .end local v12    # "sessionId":I
    .restart local v18    # "txId":Ljava/lang/String;
    .restart local v19    # "sessionId":I
    .restart local v28    # "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    move-object/from16 v12, v17

    .end local v17    # "extFeature":Ljava/lang/String;
    .local v12, "extFeature":Ljava/lang/String;
    move-object v10, v0

    move-object/from16 v29, v18

    .end local v18    # "txId":Ljava/lang/String;
    .local v29, "txId":Ljava/lang/String;
    move v11, v13

    move-object/from16 v31, v12

    move/from16 v30, v19

    .end local v12    # "extFeature":Ljava/lang/String;
    .end local v19    # "sessionId":I
    .local v30, "sessionId":I
    .local v31, "extFeature":Ljava/lang/String;
    move-object v12, v6

    move-object/from16 v33, v3

    move/from16 v32, v13

    move v3, v14

    .end local v13    # "success":Z
    .end local v14    # "error":I
    .local v3, "error":I
    .local v32, "success":Z
    .local v33, "generator":Lcom/sec/internal/ims/util/UriGenerator;
    move-wide v13, v4

    move/from16 v34, v15

    .end local v15    # "isResponse":Z
    .local v34, "isResponse":Z
    move v15, v8

    move/from16 v16, v34

    move/from16 v17, v30

    move-object/from16 v19, v9

    move-object/from16 v20, v31

    invoke-direct/range {v10 .. v20}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;-><init>(ZLcom/sec/ims/util/ImsUri;JIZILjava/lang/String;Ljava/util/Set;Ljava/lang/String;)V

    .line 339
    .local v0, "event":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;
    if-nez v32, :cond_18

    .line 340
    const/4 v10, 0x7

    if-ne v3, v10, :cond_f

    .line 341
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->INVALID_DATA:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .end local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .local v10, "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    goto :goto_8

    .line 342
    .end local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    :cond_f
    const/4 v10, 0x5

    if-ne v3, v10, :cond_10

    .line 343
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->REQUEST_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .end local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    goto :goto_8

    .line 344
    .end local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    :cond_10
    const/4 v10, 0x6

    if-ne v3, v10, :cond_11

    .line 345
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->AUTOMATA_PRESENT:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .end local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    goto :goto_8

    .line 346
    .end local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    :cond_11
    const/4 v10, 0x1

    if-ne v3, v10, :cond_12

    .line 347
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .end local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    goto :goto_8

    .line 348
    .end local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    :cond_12
    const/4 v10, 0x2

    if-ne v3, v10, :cond_13

    .line 349
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .end local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    goto :goto_8

    .line 350
    .end local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    :cond_13
    const/4 v10, 0x4

    if-ne v3, v10, :cond_14

    .line 351
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_REACHABLE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .end local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    goto :goto_8

    .line 352
    .end local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    :cond_14
    const/4 v10, 0x3

    if-ne v3, v10, :cond_15

    .line 353
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .end local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    goto :goto_8

    .line 354
    .end local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    :cond_15
    const/16 v10, 0x8

    if-ne v3, v10, :cond_16

    .line 355
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .end local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    goto :goto_8

    .line 356
    .end local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    :cond_16
    if-nez v3, :cond_17

    .line 357
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_AVAILABLE_OFFLINE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .end local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    goto :goto_8

    .line 359
    .end local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    :cond_17
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .line 361
    .end local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    :goto_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleOptionsReceived: received error "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 339
    .end local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    :cond_18
    move-object/from16 v10, v22

    .line 363
    .end local v22    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .restart local v10    # "reason":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    :goto_9
    invoke-virtual {v0, v10}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->setReason(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;)V

    .line 364
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->setIsTokenUsed(Z)V

    .line 365
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleOptionsReceived: lastSeen "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->lastSeen()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->lastSeen()I

    move-result v11

    if-ltz v11, :cond_19

    .line 367
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->lastSeen()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->setLastSeen(I)V

    .line 370
    :cond_19
    if-eqz v26, :cond_1a

    .line 371
    const-string v11, "handleOptionsReceived: recevied OPTION response msg for CMC"

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    move-object/from16 v1, p0

    move-object/from16 v11, v28

    .end local v28    # "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->notifyCmcEvent(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V

    move-object/from16 v13, v31

    goto :goto_a

    .line 374
    .end local v11    # "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1a
    move-object/from16 v1, p0

    move-object/from16 v11, v28

    .end local v28    # "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "assertedIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "d2d.push"

    move-object/from16 v13, v31

    .end local v31    # "extFeature":Ljava/lang/String;
    .local v13, "extFeature":Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 375
    invoke-direct {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->notifyP2pEvent(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V

    goto :goto_a

    .line 377
    :cond_1b
    invoke-direct {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->notifyEvent(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V

    .line 380
    :goto_a
    return-void
.end method

.method private notifyCmcEvent(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V
    .locals 1
    .param p1, "evt"    # Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mCmcRegistrant:Lcom/sec/internal/helper/Registrant;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 124
    :cond_0
    return-void
.end method

.method private notifyEvent(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V
    .locals 1
    .param p1, "evt"    # Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mRegistrant:Lcom/sec/internal/helper/Registrant;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 118
    :cond_0
    return-void
.end method

.method private notifyP2pEvent(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V
    .locals 1
    .param p1, "evt"    # Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mP2pRegistrant:Lcom/sec/internal/helper/Registrant;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    const-string v2, "ResipOptionsHandler"

    if-eq v0, v1, :cond_1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 146
    const-string v0, "SessionHandler():Cannot understand the event."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 142
    const-string v0, "SessionHandler():EVENT_OPTIONS_RECEIVED_NOTIFY received."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    goto :goto_0

    .line 136
    :cond_1
    const-string v0, "SessionHandler():EVENT_OPTIONS_REQ_RESPONSE received."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    nop

    .line 151
    :goto_0
    return-void
.end method

.method public init()V
    .locals 3

    .line 161
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/OptionsHandler;->init()V

    .line 162
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 163
    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerOptionsHandler(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 164
    return-void
.end method

.method public registerForCmcOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 106
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mCmcRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 107
    return-void
.end method

.method public registerForOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 102
    return-void
.end method

.method public registerForP2pOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 111
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mP2pRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 112
    return-void
.end method

.method public requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)V
    .locals 9
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "myFeatures"    # J
    .param p4, "phoneId"    # I
    .param p5, "extFeature"    # Ljava/lang/String;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestCapabilityExchange: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "iari"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipOptionsHandler"

    invoke-static {v1, p4, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    const-string/jumbo v0, "options"

    invoke-direct {p0, v0, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 186
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 187
    const-string/jumbo v2, "requestCapabilityExchange: UserAgent not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 191
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestCapabilityExchange: handle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    move-wide v6, p2

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestOptionsReqCapabilityExchange(ILjava/lang/String;JLjava/lang/String;)V

    .line 194
    return-void
.end method

.method public requestSendCmcCheckMsg(IILjava/lang/String;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "regId"    # I
    .param p3, "uriStr"    # Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestSendCmcCheckMsg: regId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipOptionsHandler"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 201
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 202
    const-string/jumbo v2, "requestSendCmcCheckMsg: UserAgent not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 206
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestSendCmcCheckMsg: handle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestOptionsReqSendCmcCheckMsg(ILjava/lang/String;)V

    .line 208
    return-void
.end method

.method public sendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;ILandroid/os/Message;ILjava/lang/String;)V
    .locals 15
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "myFeatures"    # J
    .param p4, "txId"    # Ljava/lang/String;
    .param p5, "lastSeen"    # I
    .param p6, "result"    # Landroid/os/Message;
    .param p7, "phoneId"    # I
    .param p8, "extFeature"    # Ljava/lang/String;

    .line 213
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCapexResponse: uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ResipOptionsHandler"

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string/jumbo v1, "options"

    move/from16 v4, p7

    invoke-direct {p0, v1, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    .line 216
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v1, :cond_0

    .line 217
    const-string/jumbo v5, "sendCapexResponse: UserAgent not found."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 221
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendCapexResponse: handle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v8

    move-wide/from16 v9, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p8

    invoke-virtual/range {v6 .. v14}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendCapexResponse(ILjava/lang/String;JLjava/lang/String;ILandroid/os/Message;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method public setOwnCapabilities(JI)V
    .locals 4
    .param p1, "features"    # J
    .param p3, "phoneId"    # I

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOwnCapabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipOptionsHandler"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    const-string/jumbo v0, "options"

    invoke-direct {p0, v0, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 170
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 171
    const-string/jumbo v2, "setOwnCapabilities: UserAgent not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 175
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOwnCapabilities: handle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestUpdateFeatureTag(IJ)V

    .line 177
    return-void
.end method

.method public updateCmcExtCallCount(II)I
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callCnt"    # I

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCmcExtCallCount: phoneId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callCnt= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipOptionsHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updateCmcExtCallCount(II)V

    .line 230
    const/4 v0, 0x0

    return v0
.end method
