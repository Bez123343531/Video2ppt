type SupportedLocale = 'en-US' | 'zh-CN';

export class I18nManager {
  private static instance?: I18nManager;
  private current: SupportedLocale = 'zh-CN';

  static getInstance(): I18nManager {
    if (!I18nManager.instance) {
      I18nManager.instance = new I18nManager();
    }
    return I18nManager.instance;
  }

  toggleLocale() {
    this.current = this.current === 'zh-CN' ? 'en-US' : 'zh-CN';
  }

  t(key: string, params?: Record<string, string>): string {
    // TODO: Integrate with HarmonyOS i18n resources
    return key;
  }
}



