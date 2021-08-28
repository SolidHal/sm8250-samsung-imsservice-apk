.class public final synthetic Lcom/sec/internal/ims/servicemodules/session/-$$Lambda$SessionModule$HkaIUyOEbyiL7w-LWW591fX5KmM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/servicemodules/session/-$$Lambda$SessionModule$HkaIUyOEbyiL7w-LWW591fX5KmM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/servicemodules/session/-$$Lambda$SessionModule$HkaIUyOEbyiL7w-LWW591fX5KmM;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/session/-$$Lambda$SessionModule$HkaIUyOEbyiL7w-LWW591fX5KmM;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/session/-$$Lambda$SessionModule$HkaIUyOEbyiL7w-LWW591fX5KmM;->INSTANCE:Lcom/sec/internal/ims/servicemodules/session/-$$Lambda$SessionModule$HkaIUyOEbyiL7w-LWW591fX5KmM;

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

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->lambda$updateConfig$0(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
