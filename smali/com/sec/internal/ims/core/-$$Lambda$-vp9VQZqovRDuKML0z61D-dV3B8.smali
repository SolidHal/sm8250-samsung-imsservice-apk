.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$-vp9VQZqovRDuKML0z61D-dV3B8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$-vp9VQZqovRDuKML0z61D-dV3B8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/-$$Lambda$-vp9VQZqovRDuKML0z61D-dV3B8;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/-$$Lambda$-vp9VQZqovRDuKML0z61D-dV3B8;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/-$$Lambda$-vp9VQZqovRDuKML0z61D-dV3B8;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$-vp9VQZqovRDuKML0z61D-dV3B8;

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

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
