.class public Lcom/sec/internal/constants/ims/servicemodules/im/ImDefaultConst;
.super Ljava/lang/Object;
.source "ImDefaultConst.java"


# static fields
.field public static final DEFALUT_IS_COMPOSING_TIMEOUT:I = 0x14

.field public static final DEFALUT_MAX_MSG_GROUPCHAT_SUBJECT:I = 0x64

.field public static final DEFALUT_MIN_GROUPCHAT_PARTICIPANTS:I = 0x3

.field public static final DEFAULT_CHAT_RESPOND_TO_DISPLAY_REPORTS:Ljava/lang/Boolean;

.field public static final DEFAULT_GEOLOCSHARE_GEOLOCEXPIRETIME:I = 0x708

.field public static final DEFAULT_GEOLOCSHARE_MAXGEOLOCLABELLENGTH:I = 0xc8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDefaultConst;->DEFAULT_CHAT_RESPOND_TO_DISPLAY_REPORTS:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
