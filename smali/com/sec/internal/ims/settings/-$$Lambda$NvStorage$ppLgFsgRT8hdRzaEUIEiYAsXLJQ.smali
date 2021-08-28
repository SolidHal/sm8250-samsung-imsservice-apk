.class public final synthetic Lcom/sec/internal/ims/settings/-$$Lambda$NvStorage$ppLgFsgRT8hdRzaEUIEiYAsXLJQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$NvStorage$ppLgFsgRT8hdRzaEUIEiYAsXLJQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/settings/-$$Lambda$NvStorage$ppLgFsgRT8hdRzaEUIEiYAsXLJQ;

    invoke-direct {v0}, Lcom/sec/internal/ims/settings/-$$Lambda$NvStorage$ppLgFsgRT8hdRzaEUIEiYAsXLJQ;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/-$$Lambda$NvStorage$ppLgFsgRT8hdRzaEUIEiYAsXLJQ;->INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$NvStorage$ppLgFsgRT8hdRzaEUIEiYAsXLJQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/NvStorage;->lambda$dump$0(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
