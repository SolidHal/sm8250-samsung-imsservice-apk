.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$dTmsvAx6w6gLvr7pxl8ostahz84;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$dTmsvAx6w6gLvr7pxl8ostahz84;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/-$$Lambda$dTmsvAx6w6gLvr7pxl8ostahz84;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/-$$Lambda$dTmsvAx6w6gLvr7pxl8ostahz84;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/-$$Lambda$dTmsvAx6w6gLvr7pxl8ostahz84;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$dTmsvAx6w6gLvr7pxl8ostahz84;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object p1

    return-object p1
.end method
