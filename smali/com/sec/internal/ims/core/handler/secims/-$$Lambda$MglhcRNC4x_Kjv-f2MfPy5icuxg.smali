.class public final synthetic Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$MglhcRNC4x_Kjv-f2MfPy5icuxg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$MglhcRNC4x_Kjv-f2MfPy5icuxg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$MglhcRNC4x_Kjv-f2MfPy5icuxg;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$MglhcRNC4x_Kjv-f2MfPy5icuxg;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$MglhcRNC4x_Kjv-f2MfPy5icuxg;->INSTANCE:Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$MglhcRNC4x_Kjv-f2MfPy5icuxg;

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

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method
