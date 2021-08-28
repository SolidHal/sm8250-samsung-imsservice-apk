.class public final synthetic Lcom/sec/internal/ims/core/sim/-$$Lambda$SimManagerUtils$CfbNCm4plA8nnLFICz58e_nFfy8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/sim/-$$Lambda$SimManagerUtils$CfbNCm4plA8nnLFICz58e_nFfy8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/sim/-$$Lambda$SimManagerUtils$CfbNCm4plA8nnLFICz58e_nFfy8;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/-$$Lambda$SimManagerUtils$CfbNCm4plA8nnLFICz58e_nFfy8;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/sim/-$$Lambda$SimManagerUtils$CfbNCm4plA8nnLFICz58e_nFfy8;->INSTANCE:Lcom/sec/internal/ims/core/sim/-$$Lambda$SimManagerUtils$CfbNCm4plA8nnLFICz58e_nFfy8;

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

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->lambda$getEhplmn$0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
