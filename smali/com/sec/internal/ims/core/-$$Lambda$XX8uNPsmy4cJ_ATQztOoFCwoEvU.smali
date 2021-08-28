.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$XX8uNPsmy4cJ_ATQztOoFCwoEvU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$XX8uNPsmy4cJ_ATQztOoFCwoEvU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/-$$Lambda$XX8uNPsmy4cJ_ATQztOoFCwoEvU;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/-$$Lambda$XX8uNPsmy4cJ_ATQztOoFCwoEvU;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/-$$Lambda$XX8uNPsmy4cJ_ATQztOoFCwoEvU;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$XX8uNPsmy4cJ_ATQztOoFCwoEvU;

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

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
