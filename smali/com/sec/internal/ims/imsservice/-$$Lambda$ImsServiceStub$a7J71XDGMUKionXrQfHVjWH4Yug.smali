.class public final synthetic Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$a7J71XDGMUKionXrQfHVjWH4Yug;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$a7J71XDGMUKionXrQfHVjWH4Yug;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$a7J71XDGMUKionXrQfHVjWH4Yug;

    invoke-direct {v0}, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$a7J71XDGMUKionXrQfHVjWH4Yug;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$a7J71XDGMUKionXrQfHVjWH4Yug;->INSTANCE:Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$a7J71XDGMUKionXrQfHVjWH4Yug;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$getRcsProfileType$4(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
