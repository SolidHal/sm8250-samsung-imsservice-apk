.class public final synthetic Lcom/sec/internal/google/-$$Lambda$GoogleImsService$j4oR8wOS3QH8MgHgpOwnrA0XLGA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/google/-$$Lambda$GoogleImsService$j4oR8wOS3QH8MgHgpOwnrA0XLGA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/google/-$$Lambda$GoogleImsService$j4oR8wOS3QH8MgHgpOwnrA0XLGA;

    invoke-direct {v0}, Lcom/sec/internal/google/-$$Lambda$GoogleImsService$j4oR8wOS3QH8MgHgpOwnrA0XLGA;-><init>()V

    sput-object v0, Lcom/sec/internal/google/-$$Lambda$GoogleImsService$j4oR8wOS3QH8MgHgpOwnrA0XLGA;->INSTANCE:Lcom/sec/internal/google/-$$Lambda$GoogleImsService$j4oR8wOS3QH8MgHgpOwnrA0XLGA;

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

    check-cast p1, Lcom/sec/ims/util/NameAddr;

    invoke-static {p1}, Lcom/sec/internal/google/GoogleImsService;->lambda$extractOwnUrisFromReg$1(Lcom/sec/ims/util/NameAddr;)Z

    move-result p1

    return p1
.end method
