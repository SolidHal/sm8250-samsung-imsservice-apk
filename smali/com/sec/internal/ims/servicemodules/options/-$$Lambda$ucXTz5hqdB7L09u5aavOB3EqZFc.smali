.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ucXTz5hqdB7L09u5aavOB3EqZFc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ucXTz5hqdB7L09u5aavOB3EqZFc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ucXTz5hqdB7L09u5aavOB3EqZFc;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ucXTz5hqdB7L09u5aavOB3EqZFc;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ucXTz5hqdB7L09u5aavOB3EqZFc;->INSTANCE:Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ucXTz5hqdB7L09u5aavOB3EqZFc;

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

    check-cast p1, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
