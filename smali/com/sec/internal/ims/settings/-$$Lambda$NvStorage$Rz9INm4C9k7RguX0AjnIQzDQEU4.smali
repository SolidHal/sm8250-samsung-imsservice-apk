.class public final synthetic Lcom/sec/internal/ims/settings/-$$Lambda$NvStorage$Rz9INm4C9k7RguX0AjnIQzDQEU4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$NvStorage$Rz9INm4C9k7RguX0AjnIQzDQEU4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/settings/-$$Lambda$NvStorage$Rz9INm4C9k7RguX0AjnIQzDQEU4;

    invoke-direct {v0}, Lcom/sec/internal/ims/settings/-$$Lambda$NvStorage$Rz9INm4C9k7RguX0AjnIQzDQEU4;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/-$$Lambda$NvStorage$Rz9INm4C9k7RguX0AjnIQzDQEU4;->INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$NvStorage$Rz9INm4C9k7RguX0AjnIQzDQEU4;

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

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/sec/internal/ims/settings/NvStorage;->lambda$dump$1(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
