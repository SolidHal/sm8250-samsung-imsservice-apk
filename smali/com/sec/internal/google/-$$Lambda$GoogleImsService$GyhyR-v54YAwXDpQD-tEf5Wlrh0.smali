.class public final synthetic Lcom/sec/internal/google/-$$Lambda$GoogleImsService$GyhyR-v54YAwXDpQD-tEf5Wlrh0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/google/-$$Lambda$GoogleImsService$GyhyR-v54YAwXDpQD-tEf5Wlrh0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/google/-$$Lambda$GoogleImsService$GyhyR-v54YAwXDpQD-tEf5Wlrh0;

    invoke-direct {v0}, Lcom/sec/internal/google/-$$Lambda$GoogleImsService$GyhyR-v54YAwXDpQD-tEf5Wlrh0;-><init>()V

    sput-object v0, Lcom/sec/internal/google/-$$Lambda$GoogleImsService$GyhyR-v54YAwXDpQD-tEf5Wlrh0;->INSTANCE:Lcom/sec/internal/google/-$$Lambda$GoogleImsService$GyhyR-v54YAwXDpQD-tEf5Wlrh0;

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

    check-cast p1, Lcom/sec/ims/util/NameAddr;

    invoke-static {p1}, Lcom/sec/internal/google/GoogleImsService;->lambda$extractOwnUrisFromReg$2(Lcom/sec/ims/util/NameAddr;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
