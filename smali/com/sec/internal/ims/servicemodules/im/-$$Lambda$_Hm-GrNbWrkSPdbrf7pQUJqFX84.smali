.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$_Hm-GrNbWrkSPdbrf7pQUJqFX84;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$_Hm-GrNbWrkSPdbrf7pQUJqFX84;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$_Hm-GrNbWrkSPdbrf7pQUJqFX84;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$_Hm-GrNbWrkSPdbrf7pQUJqFX84;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$_Hm-GrNbWrkSPdbrf7pQUJqFX84;->INSTANCE:Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$_Hm-GrNbWrkSPdbrf7pQUJqFX84;

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

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
