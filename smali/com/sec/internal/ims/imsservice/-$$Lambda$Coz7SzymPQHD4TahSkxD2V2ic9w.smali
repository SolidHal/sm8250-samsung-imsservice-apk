.class public final synthetic Lcom/sec/internal/ims/imsservice/-$$Lambda$Coz7SzymPQHD4TahSkxD2V2ic9w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/imsservice/-$$Lambda$Coz7SzymPQHD4TahSkxD2V2ic9w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/imsservice/-$$Lambda$Coz7SzymPQHD4TahSkxD2V2ic9w;

    invoke-direct {v0}, Lcom/sec/internal/ims/imsservice/-$$Lambda$Coz7SzymPQHD4TahSkxD2V2ic9w;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/imsservice/-$$Lambda$Coz7SzymPQHD4TahSkxD2V2ic9w;->INSTANCE:Lcom/sec/internal/ims/imsservice/-$$Lambda$Coz7SzymPQHD4TahSkxD2V2ic9w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;->initSequentially()V

    return-void
.end method
