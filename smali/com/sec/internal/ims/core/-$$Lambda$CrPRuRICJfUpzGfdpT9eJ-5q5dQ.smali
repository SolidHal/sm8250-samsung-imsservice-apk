.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$CrPRuRICJfUpzGfdpT9eJ-5q5dQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$CrPRuRICJfUpzGfdpT9eJ-5q5dQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/-$$Lambda$CrPRuRICJfUpzGfdpT9eJ-5q5dQ;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/-$$Lambda$CrPRuRICJfUpzGfdpT9eJ-5q5dQ;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/-$$Lambda$CrPRuRICJfUpzGfdpT9eJ-5q5dQ;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$CrPRuRICJfUpzGfdpT9eJ-5q5dQ;

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

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
