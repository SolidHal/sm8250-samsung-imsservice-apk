.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$PrMtWDsBW8rwoSn9q_uHztqNscg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$PrMtWDsBW8rwoSn9q_uHztqNscg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$PrMtWDsBW8rwoSn9q_uHztqNscg;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$PrMtWDsBW8rwoSn9q_uHztqNscg;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$PrMtWDsBW8rwoSn9q_uHztqNscg;->INSTANCE:Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$PrMtWDsBW8rwoSn9q_uHztqNscg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->lambda$readMessages$0(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I

    move-result p1

    return p1
.end method
