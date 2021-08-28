.class public final Lcom/sec/internal/constants/ims/entitilement/EntitlementNamespaces$EntitlementEvents;
.super Ljava/lang/Object;
.source "EntitlementNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/EntitlementNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntitlementEvents"
.end annotation


# static fields
.field public static final EVENT_AKA_TOKEN_RETRIEVAL:I = 0xc8

.field public static final EVENT_FORCE_CONFIG_UPDATE:I = 0x6c

.field public static final EVENT_INITIALIZE:I = 0x6a

.field public static final EVENT_REFRESH_DEVICE_CONFIG:I = 0x6b

.field public static final EVENT_UPDATE_ENTITLEMENT_URL:I = 0xc9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
