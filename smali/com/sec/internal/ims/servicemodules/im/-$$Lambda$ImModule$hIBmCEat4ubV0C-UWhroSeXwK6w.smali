.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$hIBmCEat4ubV0C-UWhroSeXwK6w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$hIBmCEat4ubV0C-UWhroSeXwK6w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$hIBmCEat4ubV0C-UWhroSeXwK6w;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$hIBmCEat4ubV0C-UWhroSeXwK6w;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$hIBmCEat4ubV0C-UWhroSeXwK6w;->INSTANCE:Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$hIBmCEat4ubV0C-UWhroSeXwK6w;

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

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->lambda$handleEventConfigured$0(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
